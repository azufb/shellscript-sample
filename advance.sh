dirName="sql"
sqlFileName="insert.sql"

mkdir $dirName
cd $dirName
touch $sqlFileName

echo "作りたいデータを選んでください"
select type in "洋食" "中華" "和食"
do
    echo "${type}が選択されました。"
    
    if [ $type = "洋食" ]; then
        tableName="westernDishes"
        menuList=("ハンバーグ" "パスタ" "オムライス")
    elif [ $type = "中華" ]; then
        tableName="chineseDishes"
        menuList=("焼売" "餃子" "チャーハン" "担々麺" "麻婆豆腐")
    else
        tableName="japaneseDishes"
        menuList=("焼き魚" "味噌汁" "おひたし" "肉じゃが")
    fi

    for i in ${!menuList[@]}
    do
        id=$((i + 1))
        name=${menuList[$i]}
        insertText="INSERT INTO $tableName VALUES (${id}, ${name});"

        echo ${insertText} >> ${sqlFileName}
    done
    break
done