<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ゴルフ練習リスト（入力画面）</title>
</head>

<body>
  <form action="todo_create.php" method="POST">
    <fieldset>
      <legend>ゴルフ練習リスト（入力画面）</legend>
      <a href="todo_read.php">一覧画面</a>
      <div>
        プレイヤー: <input type="text" name="username">
      </div>
      <div>
        練習球数: <input type="text" name="menu">
      </div>
      <div>
        プレー日: <input type="date" name="play">
      </div>
      <div>
        プレー場所: <input type="text" name="place">
      </div>
      <!-- <div>
        プレー場所:<select name="place">
          <optgroup label="練習場所を選択">
            <option value="小戸ゴルフセンター">小戸ゴルフセンター</option>
            <option value="ウエストサイドゴルフ">ウエストサイドゴルフ</option>
            <option value="有田ゴルフガーデン">有田ゴルフガーデン</option>
            <option value="アコーディアン・ガーデン福岡">アコーディアン・ガーデン福岡</option>
          </optgroup>
        </select>
      </div> -->



      <div>
        <button>クリック</button>
      </div>
    </fieldset>
  </form>

</body>

</html>