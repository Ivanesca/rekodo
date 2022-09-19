<!DOCTYPE HTML>
<html>

<head>
    <title>Rekōdo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/album/">
</head>

<head>

    {*    {include file="templates/head_nav.tpl"}*}

    {*    <div class="collapse" id="collapseExample">*}
    {*        {if $user_id < 0}*}
    {*            {include file="templates/about_unauthorize.tpl"}*}
    {*        {/if}*}
    {*        {if $user_role == 1}*}
    {*            {include file="templates/about_admin.tpl" username=$username}*}
    {*        {/if}*}
    {*        {if $user_role == 2}*}
    {*            {include file="templates/about_employee.tpl" username=$username}*}
    {*        {/if}*}
    {*        {if $user_role == 3}*}
    {*            {include file="templates/about_viewer.tpl" username=$username}*}
    {*        {/if}*}
    {*    </div>*}

</head>
<body>

<div class="container-fluid">
    <div class="row">

        <div class="col-2 px-1 bg-dark position-fixed" id="sticky-sidebar">
            <div class="nav flex-column flex-nowrap vh-100 overflow-auto text-white p-2">
                <a href="index.php"
                   class="mx-4 d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" fill="currentColor" class="bi bi-vinyl mt-1" viewBox="0 0 16 16">
                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                        <path d="M8 6a2 2 0 1 0 0 4 2 2 0 0 0 0-4zM4 8a4 4 0 1 1 8 0 4 4 0 0 1-8 0z"/>
                        <path d="M9 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                    </svg>
                    <span class="fs-4 mx-2">Rekōdo</span>
                </a>
                <hr>
                <ul class="nav nav-pills flex-column mb-auto">
                    <li>
                        <a href="collection.php" class="nav-link text-white">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#table"/>
                            </svg>
                            Edit collection
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="index.php" class="nav-link text-white">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#home"/>
                            </svg>
                            My vinyl
                        </a>
                    </li>
                    <li>
                        <a href="message.php" class="nav-link text-white">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#table"/>
                            </svg>
                            Inbox
                        </a>
                    </li>
                    <li>
                        <a href="sent_message.php" class="nav-link bg-light text-dark" aria-current="page">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#table"/>
                            </svg>
                            Sent
                        </a>
                    </li>
                    <li>
                        <a href="trade.php" class="nav-link text-white">
                            <svg class="bi me-2" width="16" height="16">
                                <use xlink:href="#speedometer2"/>
                            </svg>
                            Trade
                        </a>
                    </li>
                </ul>
                <hr>

                <div>
                    <a href="#" class="nav-link px-2 text-white ms-4">To begin</a>
                </div>
                <hr>
                <div>
                    <a href="controller/log_out.php" class="nav-link px-2 text-white ms-4">Log out</a>
                </div>

                <hr>
                <div>
                    <strong class="btn btn-light text-dark disabled w-100" data-bs-toggle="dropdown">Hey, {$username}!</strong>
                </div>
            </div>
        </div>


        <div class="col-10 offset-2" id="main">


            <form method="post" action="message.php" class="row g-3 w-75 m-auto">

                <div class="col-6">
                    <div class="dropdown">
                        <button class="btn btn-dark w-100" type="button" id="tags"
                                data-bs-auto-close="outside" data-bs-toggle="dropdown" aria-expanded="false">
                            Исполнитель
                        </button>
                        <ul class="dropdown-menu w-100" aria-labelledby="tags">
                            {foreach from=$authors item=author}
                                <li class="ms-2">
                                    <input class="form-check-input" name="author" type="radio" required
                                           value="{$author.id}" id="flexCheckChecked{$author.id}">
                                    <label class="form-check-label" for="flexCheckChecked{$author.id}">
                                        {$author.name}
                                    </label>
                                </li>
                            {/foreach}
                        </ul>
                    </div>
                </div>

                <div class="col-6">
                    <button type="submit" class="btn btn-secondary w-100">Поиск</button>
                </div>
            </form>


            <form method="post" action="controller/sent_message_delete.php">
                <button type="submit" class="btn btn-danger mx-3 mt-2">Удалить</button>
                {foreach from=$messages item=message}
                    <div class="card my-3 mx-3">
                        <div class="row g-0">
                            <div class="col-md-1 m-3">
                                <img width="120px"
                                     src="{$message.cover}">
                            </div>
                            <div class="col-md-7 offset-1">
                                <div class="card-body">
                                    <h5 class="card-title">{$message.name}</h5>
                                    <p class="card-text">
                                        {$message.message}
                                    </p>
                                    <p class="card-text">
                                        <small class="text-muted">{$message.owner_name}</small>

                                        <small class="text-dark mx-3">{$message.owner_email}</small>
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-1 offset-1">
                                <div class="card-body my-4">
                                    <input class="btn-check" type="checkbox" name="message[]" value="{$message.id}"
                                           id="flexCheck{$message.id}">
                                    <label class="btn btn-lg btn-outline-warning" style="width: 120px" for="flexCheck{$message.id}">
                                        Выбрать
                                    </label>
                                    <button type="button" class=" mt-2 btn btn-dark btn-lg" style="width: 120px" data-bs-toggle="modal" data-bs-target="#exampleModal{$message.id}">
                                        В обмен
                                    </button>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal{$message.id}" tabindex="-1" aria-labelledby="exampleModalLabel{$message.id}" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel{$message.id}">Предложение</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    {foreach from=$message.suggests item=suggest}
                                                        <p class="text-center">{$suggest.name}</p>
                                                        <hr>
                                                    {/foreach}
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                {/foreach}
            </form>

        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>

</body>
</html>