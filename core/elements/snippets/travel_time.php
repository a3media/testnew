<?php
$inday_1 = round($way / $inday);

if ($inday2){
  $inday_2 = round($way / $inday2);
  if( $inday_1 == $inday_2){

    switch ($inday_1) {
      case 1:
        return $inday_1 . ' день';
        break;
      case 2:
      case 3:
      case 4:
        return $inday_1 . ' дня';
        break;
      default:
        return $inday_1 . ' дней';
        break;
    }

  }else{

    switch ($inday_1) {
      case 1:
        return $inday_1 . ' - ' .$inday_2. ' день';
        break;
      case 2:
      case 3:
      case 4:
        return $inday_1 . ' - ' .$inday_2.' дня';
        break;
      default:
        return $inday_1 . ' - ' .$inday_2.  ' дней';
        break;
    }

  }

} else {
  switch ($inday_1) {
    case 1:
      return $inday_1 . ' день';
      break;
    case 2:
    case 3:
    case 4:
      return $inday_1 . ' дня';
      break;
    default:
      return $inday_1 . ' дней';
      break;
  }
}