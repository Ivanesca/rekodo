<div class="modal fade" id="messageCreatingModel{$album_id}" tabindex="-1" aria-labelledby="messageCreatingModelLabel{$album_id}"
     aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="messageCreatingModelLabel{$album_id}">Новое сообщение</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form method="post" action="controller/message_create.php">
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="message-text" class="col-form-label">Оставьте свое сообщение здесь:</label>
                        <textarea class="form-control h-5" id="message-text" name="message"></textarea>
                        <input value="{$album_id}" name="album" class="d-none">
                    </div>
                </div>
                <input hidden name="movie_id" value="1">
                <div class="modal-footer">
                    <button type="submit" class="btn btn-dark">Отправить</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                </div>
            </form>
        </div>
    </div>
</div>