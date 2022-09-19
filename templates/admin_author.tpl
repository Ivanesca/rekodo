<div class="modal fade" id="exampleModalAuthor" tabindex="-1" aria-labelledby="exampleModalLabelAuthor"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelAuthor">Добавление исполнителя</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form method="post" action="controller/author_create.php">
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="message-text" class="col-form-label">Исполнитель</label>
                        <input type="text" name="author" class="form-control h-5">
                    </div>
                    <div class="mb-3">
                        <div class="dropdown">
                            <button class="btn btn-dark w-100" type="button" id="genre"
                                    data-bs-auto-close="outside" data-bs-toggle="dropdown"
                                    aria-expanded="false">
                                Страна
                            </button>
                            <ul class="dropdown-menu w-100" aria-labelledby="genres">
                                {foreach from=$countries item=country}
                                    <li class="ms-2">
                                        <input class="form-check-input" name="country" type="radio"
                                               value="{$country.id}" id="genreCheckChecked{$country.id}" required>
                                        <label class="form-check-label"
                                               for="genreCheckChecked{$country.id}">
                                            {$country.country}
                                        </label>
                                    </li>
                                {/foreach}
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                    <button type="submit" class="btn btn-dark">Сохранить информацию</button>
                </div>
                <form>
        </div>
    </div>
</div>