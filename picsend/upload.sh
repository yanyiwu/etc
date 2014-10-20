for i in $@
do
    curl -s -F "file=@${i}" http://yanyiwu.com:9333/submit | python trans.py
done
