<?php
$servername = "localhost";
$username = "todolist";
$password = "todolistpass";
$dbname = "todolist";

// Cria conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica conexão
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST["task"])) {
   // $task = htmlspecialchars($_POST["task"]);
    $task = $_POST["task"];
    $sql = "INSERT INTO tasks (task) VALUES ('$task')";
    if ($conn->query($sql) === TRUE) {
        echo "Nova tarefa adicionada com sucesso";
        echo $sql;
    } else {
        echo "Erro: " . $sql . "<br>" . $conn->error;
    }
}

$result = $conn->query("SELECT * FROM tasks");
?>

<!DOCTYPE html>
<html>
<head>
    <title>To-Do List</title>
</head>
<body>
    <h1>To-Do List</h1>
    <form method="post" action="">
        <input type="text" name="task" required>
        <button type="submit">Adicionar</button>
    </form>
    <ul>
        <?php
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<li>" . $row["task"] . "</li>";
            }
        } else {
            echo "0 tarefas";
        }
        $conn->close();
        ?>
    </ul>
</body>
</html>
