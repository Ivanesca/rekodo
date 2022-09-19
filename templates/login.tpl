<?php session_start(); ?>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="generator" content="Hugo 0.88.1">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/sign-in/">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


    <link rel="stylesheet" href="../css/registration.css">

    <title>Rekodo</title>
</head>
<body class="bg-image overflow-hidden"
style="background-image: url('https://wallbox.ru/wallpapers/main/201518/67d31814bb49cbb.jpg');
height: 100vh">
<main class="container w-50 mt-5 text-center">
    <form action="controller/log_in.php">
        <h1 class="h3 mb-3 fw-normal text-center text-white">Пожалуйста, авторизуйтесь</h1>

        <div class="form-floating m-3">
            <input type="text" class="form-control" id="name" name="name" placeholder="Name" required>
            <label for="name">Имя</label>
        </div>
        <div class="form-floating m-3">
            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
            <label for="password">Пароль</label>
        </div>
        <div class="form-floating m-3">
            <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
            <label for="email">Эл.Почта</label>
        </div>
        <div class="checkbox my-2">
            <label>
                <input type="checkbox" value="true" name="remember">  Запомнить меня
            </label>
        </div>
        <button class="w-100 btn btn-lg btn-dark mb-3" type="submit">Войти / Зарегистрироваться</button>
    </form>
</main>

</body>
</html>
