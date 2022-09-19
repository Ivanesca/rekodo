<div class="modal fade" id="Modal{$id}" tabindex="-1" aria-labelledby="exampleModalLabel{$id}" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel{$id}">{$name}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="btn-group">
                <form method="post" action="controller/album_sale.php">
                    <button type="submit" class="btn btn-outline-dark mx-2">For sale</button>
                    <input value="{$id}" name="sale" class="d-none">
                </form>
                <form method="post" action="controller/album_not_for_sale.php">
                    <button type="submit" class="btn btn-outline-dark mx-2">Not for sale</button>
                    <input value="{$id}" name="sale" class="d-none">
                </form>
                </div>
                </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
            </div>
        </div>
    </div>
</div>