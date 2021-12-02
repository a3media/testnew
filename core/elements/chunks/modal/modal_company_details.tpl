<div class="modal fade modal_ajax" id="modal_company_details" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Реквизиты </h5>

      </div>
      <div class="modal-body">
        <p> <strong>Юридическое название:</strong> {'pr_ur_name' | config}</p>
        <p> <strong>ИНН/КПП:</strong> {'pr_inn' | config}/{'pr_ur_kpp' | config}</p>
        <p> <strong>ОГРН:</strong> {'pr_ur_ogrn' | config}</p>
        <p> <strong>Юридический адрес:</strong> {'pr_ur_adress' | config}</p>
        <p> <strong>Генеральный директор:</strong> Тарараев Андрей Борисович</p>
        <h3>Банковские реквизиты:</h3>
        <p> <strong>Расчетный счет:</strong> {'pr_rs' | config}</p>
        <p> <strong>Корр.счет:</strong> {'pr_ks' | config}</p>
        <p> <strong>Банк:</strong> {'pr_bank' | config}</p>
        <p> <strong>Бик:</strong> {'pr_bik' | config}</p>
      </div>

    </div>
  </div>
</div>
