
file=$1


source /opt/homebrew/Cellar/root/6.32.04/bin/thisroot.csh

root \
TMVA::TMVAGui("${file}")

