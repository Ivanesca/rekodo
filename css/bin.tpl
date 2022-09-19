<form method="post" action="index.php" class="row g-3 w-75 m-auto">
    <div class="col-3">
        <div class="dropdown">
            <button class="btn btn-dark w-100" type="button" id="tags"
                    data-bs-auto-close="outside" data-bs-toggle="dropdown" aria-expanded="false">
                Genres
            </button>
            <ul class="dropdown-menu w-100" aria-labelledby="tags">
                {foreach from=$genre item=genre}
                    <li class="ms-2">
                        <input class="form-check-input" name="tags" type="checkbox" value="1"
                               id="flexCheckChecked">
                        <label class="form-check-label" for="flexCheckChecked">
                            {$genre.genre}
                        </label>
                    </li>
                {/foreach}
            </ul>
        </div>
    </div>
    <div class="col-3">
        <div class="dropdown">
            <button class="btn btn-dark w-100" type="button" id="tags"
                    data-bs-auto-close="outside" data-bs-toggle="dropdown" aria-expanded="false">
                State
            </button>
            <ul class="dropdown-menu w-100" aria-labelledby="tags">

                <li class="ms-2">
                    <input class="form-check-input" name="state[]" type="checkbox" value="Not for sale"
                           id="notSale">
                    <label class="form-check-label" for="notSale">
                        Not for sale
                    </label>
                </li>
                <li class="ms-2">
                    <input class="form-check-input" name="state[]" type="checkbox" value="Sale"
                           id="sale">
                    <label class="form-check-label" for="sale">
                        Sale
                    </label>
                </li>

            </ul>
        </div>
    </div>
    <div class="col-3">
        <div class="dropdown">
            <button class="btn btn-dark w-100" type="button" id="tags"
                    data-bs-auto-close="outside" data-bs-toggle="dropdown" aria-expanded="false">
                Author
            </button>
            <ul class="dropdown-menu w-100" aria-labelledby="tags">
                {foreach from=$authors item=author}
                    <li class="ms-2">
                        <input class="form-check-input" name="directors[]" type="checkbox"
                               value="1" id="flexCheckChecked">
                        <label class="form-check-label" for="flexCheckChecked">
                            {$author.name}
                        </label>
                    </li>
                {/foreach}
            </ul>
        </div>
    </div>
    <div class="col-3">
        <button type="submit" class="btn btn-secondary w-100">Search</button>
    </div>
</form>



<form method="post" action="trade.php" class="row g-3 w-75 m-auto">

    <div class="col-4">
        <div class="dropdown">
            <button class="btn btn-dark w-100" type="button" id="tags"
                    data-bs-auto-close="outside" data-bs-toggle="dropdown" aria-expanded="false">
                Genres
            </button>
            <ul class="dropdown-menu w-100" aria-labelledby="tags">
                {foreach from=$genre item=genre}
                    <li class="ms-2">
                        <input class="form-check-input" name="tags" type="checkbox" value="1"
                               id="flexCheckChecked">
                        <label class="form-check-label" for="flexCheckChecked">
                            {$genre.genre}
                        </label>
                    </li>
                {/foreach}
            </ul>
        </div>
    </div>

    <div class="col-4">
        <div class="dropdown">
            <button class="btn btn-dark w-100" type="button" id="tags"
                    data-bs-auto-close="outside" data-bs-toggle="dropdown" aria-expanded="false">
                Authors
            </button>
            <ul class="dropdown-menu w-100" aria-labelledby="tags">
                {foreach from=$authors item=author}
                    <li class="ms-2">
                        <input class="form-check-input" name="directors[]" type="checkbox"
                               value="1" id="flexCheckChecked">
                        <label class="form-check-label" for="flexCheckChecked">
                            {$author.name}
                        </label>
                    </li>
                {/foreach}
            </ul>
        </div>
    </div>

    <div class="col-4">
        <button type="submit" class="btn btn-secondary w-100">Search</button>
    </div>
</form>