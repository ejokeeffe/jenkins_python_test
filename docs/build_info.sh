#!/bin/sh
echo "------------------------"
echo "Running Shell script"
echo "Workspace: $WORKSPACE"
echo "User: $USER"

#sudo -u ec2-user bash <<"EOF"
echo "Running conda"
/home/ec2-user/miniconda3/bin/conda remove -n perform --all -y
/home/ec2-user/miniconda3/bin/conda create -n perform --yes python=3.5 jupyter pip matplotlib scipy pandas=0.19.2 numpy sphinx pylint seaborn scikit-learn=0.18.1
source /home/ec2-user/miniconda3/bin/activate perform
echo "Python Version:"
python --version | echo

pip install --upgrade pip
pip install setuptools --no-use-wheel --upgrade
pip install pytest pytest-cov

cd $WORKSPACE
python setup.py develop
python setup.py test | tee pyflakes.log
#pylint -f parseable perform/ | tee pylint.out



echo "Script completed!
echo "------------------------"