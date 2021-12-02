<script type="text/javascript" src="/assets/template/js/jquery.min.js"></script>
<script type="text/javascript" src="/assets/template/js/jquery.suggestions.min.js"></script>
<script type="text/javascript" src="/assets/template/js/lazysizes.min.js"></script>
<script type="text/javascript" src="/assets/template/js/jquery.inputmask.min.js"></script>
{'!MinifyX' | snippet : [
'jsSources' => '
/assets/template/js/jquery.fancybox.js,
/assets/template/js/bootstrap.js,
/assets/template/js/flatpickr.js,
/assets/template/js/owl.carousel.js,
/assets/template/js/sidebar.js,
/assets/template/js/theme.js
',
'minifyJs'=>'1',
]}
{if $_modx->resource.template == 58 OR $_modx->resource.template == 60}
<script type="text/javascript" src="/assets/template/js/datatables.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#priceTable').DataTable( {
        "language": {
    "decimal":        "",
    "emptyTable":     "Нет данных для отображения",
    "info":           "_START_ - _END_ из _TOTAL_",
    "infoEmpty":      "0 записей",
    "infoFiltered":   "(поиск по _MAX_ направлениям)",
    "infoPostFix":    "",
    "thousands":      ",",
    "lengthMenu":     "Показать по _MENU_",
    "loadingRecords": "Загрузка...",
    "processing":     "Загрузка...",
    "search":         "Поиск:",
    "zeroRecords":    "Поиск не принес результатов",
    "paginate": {
        "first":      "В начало",
        "last":       "В конец",
        "next":       "»",
        "previous":   "«"
    },
    "aria": {
        "sortAscending":  ": activate to sort column ascending",
        "sortDescending": ": activate to sort column descending"
    }
}
    } );
} );
</script>
{/if}
{$_modx->getPlaceholder('MinifyX.javascript')}
{if $_modx->resource.template == 66}<script type="text/javascript" src="/assets/template/js/contract.js"></script>{/if}
{if $_modx->resource.template == 67}<script type="text/javascript" src="/assets/template/js/settings.js"></script>{/if}
{if $_modx->resource.id == 7}<div class="d-none">{'AjaxForm' | snippet} </div>{/if}
