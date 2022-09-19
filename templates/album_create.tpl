<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Новая пластинка</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
                <div class="modal-body">
                    <div class="col">
                        <div class="card mb-3 h-100">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mt-1">Название альбома</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <input name="name" type="text" class="form-control" placeholder="Write here" required>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mt-1">URL обложки</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <input name="cover" type="text" class="form-control" placeholder="Write here" required>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mt-1">Год выпуска</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <input name="year" type="number" class="form-control" placeholder="2022" required>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mt-1">Количество пластинок</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <input name="count" type="number" class="form-control" placeholder="2" required>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Исполнитель</p>
                                    </div>
                                    <div class="col-3">
                                        <div class="dropdown">
                                            <button class="btn btn-dark w-100" type="button" id="tags"
                                                    data-bs-auto-close="outside" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                Исполнители
                                            </button>
                                            <ul class="dropdown-menu w-100" aria-labelledby="authors">
                                                {foreach from=$authors item=author}
                                                    <li class="ms-2">
                                                        <input class="form-check-input" name="author[]" type="checkbox"
                                                               value="{$author.id}" id="authorCheckChecked{$author.id}">
                                                        <label class="form-check-label"
                                                               for="authorCheckChecked{$author.id}">
                                                            {$author.name}
                                                        </label>
                                                    </li>
                                                {/foreach}
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mt-1">Музыкальный жанр</p>
                                    </div>
                                    <div class="col-3">
                                        <div class="dropdown">
                                            <button class="btn btn-dark w-100" type="button" id="genre"
                                                    data-bs-auto-close="outside" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                Жанры
                                            </button>
                                            <ul class="dropdown-menu w-100" aria-labelledby="genres">
                                                {foreach from=$genres item=genre}
                                                    <li class="ms-2">
                                                        <input class="form-check-input" name="genre[]" type="checkbox"
                                                               value="{$genre.id}" id="genreCheckChecked{$genre.id}">
                                                        <label class="form-check-label"
                                                               for="genreCheckChecked{$genre.id}">
                                                            {$genre.genre}
                                                        </label>
                                                    </li>
                                                {/foreach}
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mt-1">Статус</p>
                                    </div>
                                    <div class="col-3">
                                        <div class="dropdown">
                                            <button class="btn btn-dark w-100" type="button" id="tags"
                                                    data-bs-auto-close="outside" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                Статус
                                            </button>
                                            <ul class="dropdown-menu w-100" aria-labelledby="tags">
                                                <li class="ms-2">
                                                    <input class="form-check-input" name="sale" type="radio"
                                                           value="0" id="notSale" required>
                                                    <label class="form-check-label" for="notSale">
                                                        Not for sale
                                                    </label>
                                                </li>
                                                <li class="ms-2">
                                                    <input class="form-check-input" name="sale" type="radio"
                                                           value="1" id="sale">
                                                    <label class="form-check-label" for="sale">
                                                        Sale
                                                    </label>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mt-1">Состояние</p>
                                    </div>
                                    <div class="col-3">
                                        <div class="dropdown">
                                            <button class="btn btn-dark w-100" type="button" id="tags"
                                                    data-bs-auto-close="outside" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                Состояния
                                            </button>
                                            <ul class="dropdown-menu w-100" aria-labelledby="tags">
                                                <li class="ms-2">
                                                    <input class="form-check-input" name="state" type="radio"
                                                           value="1" id="S" required>
                                                    <label class="form-check-label" for="S">
                                                        S
                                                    </label>
                                                </li>
                                                <li class="ms-2">
                                                    <input class="form-check-input" name="state" type="radio"
                                                           value="2" id="A" required>
                                                    <label class="form-check-label" for="A">
                                                        A
                                                    </label>
                                                </li>
                                                <li class="ms-2">
                                                    <input class="form-check-input" name="state" type="radio"
                                                           value="3" id="B" required>
                                                    <label class="form-check-label" for="B">
                                                        B
                                                    </label>
                                                </li>
                                                <li class="ms-2">
                                                    <input class="form-check-input" name="state" type="radio"
                                                           value="4" id="C" required>
                                                    <label class="form-check-label" for="C">
                                                        C
                                                    </label>
                                                </li>
                                                <li class="ms-2">
                                                    <input class="form-check-input" name="state" type="radio"
                                                           value="5" id="D" required>
                                                    <label class="form-check-label" for="D">
                                                        D
                                                    </label>
                                                </li>
                                                <li class="ms-2">
                                                    <input class="form-check-input" name="state" type="radio"
                                                           value="6" id="F" required>
                                                    <label class="form-check-label" for="F">
                                                        F
                                                    </label>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mt-1">Тип</p>
                                    </div>
                                    <div class="col-3">
                                        <div class="dropdown">
                                            <button class="btn btn-dark w-100" type="button" id="tags"
                                                    data-bs-auto-close="outside" data-bs-toggle="dropdown"
                                                    aria-expanded="false">
                                                Типы
                                            </button>
                                            <ul class="dropdown-menu w-100" aria-labelledby="tags">
                                                <li class="ms-2">
                                                    <input class="form-check-input" name="vinyl" type="radio"
                                                           value="1" id="lp" required>
                                                    <label class="form-check-label" for="lp">
                                                        Long Play
                                                    </label>
                                                </li>
                                                <li class="ms-2">
                                                    <input class="form-check-input" name="vinyl" type="radio"
                                                           value="2" id="ep">
                                                    <label class="form-check-label" for="ep">
                                                        Extended Play
                                                    </label>
                                                </li>
                                                <li class="ms-2">
                                                    <input class="form-check-input" name="vinyl" type="radio"
                                                           value="3" id="sp">
                                                    <label class="form-check-label" for="sp">
                                                        Single Play
                                                    </label>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Описание</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <textarea class="form-control h-6" id="message-text" name="about"
                                                  placeholder="Write here" required></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                    <button type="submit" class="btn btn-dark">Сохранить информацию</button>
                </div>
        </div>
    </div>
</div>