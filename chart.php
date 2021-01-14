<?php

include("functions.php");
//DB接続
$pdo = connect_to_db();

$username = "";
$menu = "";

//データ登録SQL作成
$stmt = $pdo->prepare("SELECT* FROM golf_table");
$status = $stmt->execute();

//loop through the returned data
while ($r = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $username = $username . '"' . $r['username'] . '",';
    $menu = $menu . '"' . $r['menu'] . '",';
}
//trim関数は最初と最後の空白を取り除く関数
$username = trim($username, ",");
$menu = trim($menu, ",");

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <a href="todo_read.php">一覧画面</a>
    <canvas id="myChart" width="400" height="400"></canvas>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js"></script>
    <script>
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: [<?php echo $username ?>], //各棒の名前（username)
                datasets: [{
                    label: '# of Votes',
                    data: [<?php echo $menu ?>], //各縦棒の高さ(menu)
                    // data: [12, 19, 3, 5, 2, 20],//各縦棒の高さ(値段)
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 159, 64, 0.2)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 159, 64, 1)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true
                        }
                    }]
                }
            }
        });
    </script>




</body>

</html>