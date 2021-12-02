<tr>
  <th scope="row" class="test1"><a href="/russia/{$url}/">{$from} - {$to}</a></th>
  <td>{if $price_1_5t}{$price_1_5t | number : 0 : '.' : ' '} руб.{else}Уточните у менеджера{/if}</td>
  <td>{if $price_3t}{$price_3t | number : 0 : '.' : ' '} руб.{else}Уточните у менеджера{/if}</td>
  <td>{if $price_5t}{$price_5t | number : 0 : '.' : ' '} руб.{else}Уточните у менеджера{/if}</td>
  <td>{if $price_10t}{$price_10t | number : 0 : '.' : ' '} руб.{else}Уточните у менеджера{/if}</td>
  <td>{if $price_dogruz}от {$price_dogruz | number : 0 : '.' : ' '} руб.{else}Уточните у менеджера{/if}</td>
</tr>
