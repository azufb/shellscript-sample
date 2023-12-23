# ユーザー選択サンプル
echo "好きなスイーツの番号を選んでください。"
select word in "プリン" "シュトーレン" "ジンジャークッキー"
do
    echo "選択したのは、${word}です。"
    break
done