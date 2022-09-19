<div class="modal fade" id="aboutModel{$id}" tabindex="-1" aria-labelledby="exampleModalLabel{$id}" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel{$id}">{$name}</h5>
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
                                    <p class="text mb-0">{$name}</p>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Исполнитель</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text mb-0">{$authors}</p>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mt-1">Год выпуска альбома</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text mb-0l">{$year}</p>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mt-1">Количество пластинок</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text mb-0">{$vinyl_count}</p>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mt-1">Музыкальный жанр</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text mb-0">{$genres}</p>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mt-1">Статус</p>
                                </div>
                                {if ($sale)}
                                    <div class="col-sm-9">
                                        <p class="text mb-0">Доступен для обмена</p>
                                    </div>
                                {else}
                                    <div class="col-sm-9">
                                        <p class="text mb-0">Не доступен для обмена</p>
                                    </div>
                                {/if}
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mt-1">Состояние</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text mb-0">{$state}</p>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mt-1">Тип пластинки</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text mb-0">{$vinyl_type}</p>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Описание</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text mb-0">{$about}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
            </div>
        </div>
    </div>
</div>