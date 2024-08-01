///draw_set_align(h,v);


switch(argument[0]){
    case -1: 
        draw_set_halign(fa_left);
        break;
    case 1:
        draw_set_halign(fa_right);
        break;
    default:
        draw_set_halign(fa_center);
        break;
}


switch(argument[0]){
    case -1: 
        draw_set_valign(fa_top);
        break;
    case 1:
        draw_set_valign(fa_bottom);
        break;
    default:
        draw_set_valign(fa_middle);
        break;
}
