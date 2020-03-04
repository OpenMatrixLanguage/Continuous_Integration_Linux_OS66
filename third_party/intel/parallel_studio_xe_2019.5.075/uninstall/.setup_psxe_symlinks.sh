#!/bin/bash
# Copyright 2016-2019, Intel Corporation, All Rights Reserved.

# The  source code,  information and material  ("Material")  contained herein is
# owned  by  Intel  Corporation or its suppliers or licensors, and title to such
# Material  remains  with  Intel  Corporation  or  its  suppliers  or licensors.
# The  Material  contains proprietary information of  Intel or its suppliers and
# licensors.   The Material is protected by  worldwide copyright laws and treaty
# provisions. No part of the Material may be used, copied, reproduced, modified,
# published,  uploaded, posted, transmitted, distributed or disclosed in any way
# without Intel's prior express written permission. No license under any patent,
# copyright  or other intellectual property rights in the Material is granted to
# or conferred upon you, either expressly,  by implication, inducement, estoppel
# or  otherwise.  Any license  under such intellectual  property rights  must be
# express and approved by Intel in writing.
# Unless otherwise agreed by Intel in writing, you may not  remove or alter this
# notice or any other notice embedded in Materials by Intel or Intel's suppliers
# or licensors in any way.

ACTION=update
PSXE_ROOT=/opt/intel
CNL_ROOT=/opt/intel

while [ $# -gt 0 ] ; do
	key="$1"
	case $key in
		--psxe-root)
			PSXE_ROOT="$2"
			shift
		;;
		--cnl-root)
			CNL_ROOT="$2"
			shift
		;;
		-i|--install)
			ACTION=install
		;;
		-e|--erase)
			ACTION=erase
		;;
		*)
			# unknown option, skip
		;;
	esac
	shift
done

PSXE_LOCATION=$PSXE_ROOT/parallel_studio_xe_2019.5.075
CNL_LOCATION=$CNL_ROOT/compilers_and_libraries_2019.5.281
ADVISOR_LOCATION=$PSXE_ROOT/advisor_2019
INSPECTOR_LOCATION=$PSXE_ROOT/inspector_2019
AMPLIFIER_LOCATION=$PSXE_ROOT/vtune_amplifier_2019
CLCK_LOCATION=$PSXE_ROOT//clck/2019.5
ITAC_LOCATION=$PSXE_ROOT/itac/2019.5.041
IDE_LOCATION=$CNL_ROOT/ide_support_2019
DOC_LOCATION=$PSXE_ROOT/documentation_2019
SAMPLES_LOCATION=$PSXE_ROOT/samples_2019
MAN_LOCATION=$CNL_ROOT/man

# <base_directory>	<symlink>	<target>
LINKS="
$PSXE_LOCATION	clck_2019	$CLCK_LOCATION
$PSXE_LOCATION	itac_2019	$ITAC_LOCATION
$PSXE_LOCATION	advisor_2019	$ADVISOR_LOCATION
$PSXE_LOCATION	inspector_2019	$INSPECTOR_LOCATION
$PSXE_LOCATION	vtune_amplifier_2019	$AMPLIFIER_LOCATION
$PSXE_LOCATION	compilers_and_libraries_2019	$CNL_LOCATION
$PSXE_LOCATION	documentation_2019	$DOC_LOCATION
$PSXE_LOCATION	ide_support_2019	$IDE_LOCATION
$PSXE_LOCATION	samples_2019	$SAMPLES_LOCATION
$PSXE_LOCATION	man	$MAN_LOCATION
"

is_absolute_path()
{
	echo $1 | grep '^/' > /dev/null 2>&1 ; return $?
}

echo_toplevel_dir_for_absolute_path()
{
	echo $1 | sed 's%^/%%' | sed 's%/.*$%%g'
}

link()
{
	local BASE_DIR=$1
	local LINK=$2
	local TARGET=$3
	[ -z "$LINK" ] && return
	[ -z "$TARGET" ] && return
	[ ! -d "$BASE_DIR" ] && return

	# link it!
	pushd $BASE_DIR > /dev/null 2>&1
	ln -sT $RELATIVE_FLAG $TARGET $LINK > /dev/null  2>&1
	popd > /dev/null 2>&1
}

link_if_exists()
{
	local BASE_DIR=$1
	local TARGET=$3
	if is_absolute_path $TARGET ; then
		[ -e "$TARGET" ] && link $1 $2 $3
	else
		[ -e "$BASE_DIR/$TARGET" ] && link $1 $2 $3
	fi
}

rmlink()
{
	local LINK=$1
	[ -h "$LINK" ] && rm -f $LINK
}

create_links()
{
	for str in $(echo "$LINKS" | sed 's/	/;/g') ; do
		str=$(echo "$str" | sed 's/;/	/g')
		# echo "line: "$str"
		BASE_DIR=`echo "$str" | cut -f 1`
		LINK_NAME=`echo "$str" | cut -f 2`
		TARGET=`echo "$str" | cut -f 3`
		link_if_exists $BASE_DIR $LINK_NAME $TARGET
	done
}

remove_links()
{
	for str in $(echo "$LINKS" | sed 's/	/;/g') ; do
		str=$(echo "$str" | sed 's/;/	/g')
		# echo "line: $str"
		BASE_DIR=`echo "$str" | cut -f 1`
		LINK_NAME=`echo "$str" | cut -f 2`
		TARGET=`echo "$str" | cut -f 3`
		rmlink "$BASE_DIR/$LINK_NAME"
	done
}

case $ACTION in
	install)
		create_links
	;;
	update)
		remove_links
		create_links
	;;
	erase)
		remove_links
	;;
esac

exit 0

