<div class="modal fade" id="exampleModalGenre" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelGenre">Добавление жанра</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form method="post" action="controller/genre_create.php">
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="message-text" class="col-form-label">Жанр</label>
                        <input type="text" name="genre" class="form-control h-5">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                    <button type="submit" class="btn btn-dark">Сохранить информацию</button>
                </div>
            </form>
        </div>
    </div>
</div>