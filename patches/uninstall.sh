#!/bin/sh
rootdirectory="$PWD"
dirs="frameworks/av frameworks/base frameworks/native system/core system/media system/netd system/sepolicy packages/apps/FMRadio prebuilts/sdk"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Cleaning $dir patches..."
	git checkout -- . && git clean -df
done

echo "Done!"
cd $rootdirectory
