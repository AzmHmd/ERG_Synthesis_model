# make test_A folder

#TCGA
dataset='/home/azamhamidinekoo/Documents/projects/Azam_HDGAN_feb21/dataset/TCGA/TCGA*'
for case in $dataset
do
	echo $case
	mkdir $case'/test_A'
	find $case -name 'Da*' -exec mv "{}" $case'/test_A/' \;
done
