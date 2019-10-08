# !/bin/bash
subjdir=/jukebox/hasson/claire/tennis/subjects/
subjlist=`ls $subjdir/nii/| awk 'BEGIN{FS="_"}{ print $1"_"$2 }' | uniq`

for s in $subjlist 
do
mkdir ${subjdir}/${s}/data/
mkdir ${subjdir}/${s}/data/nifti/
mv `ls ${subjdir}/nii/${s}*` ${subjdir}/${s}/data/nifti/
done
