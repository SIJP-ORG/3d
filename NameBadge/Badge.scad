//
// SIJP Name Badge
// cf. max print size
//  - QIDI 225x145
//  - Shapeways 285x150 (PLA)
//

width = 100; // 名札のサイズ(X)
height = 60; // 名札のサイズ(Y)
gap_x = 20;  // 罫線の間隔(X)
gap_y = 20;  // 罫線の間隔(Y)
thick = 1;   // 罫線の太さ(mm)
thick_outer = 5;     // 名札外周の太さ(mm)
cx = width / gap_x;  // 罫線の本数(X)
cy = height / gap_y; // 罫線の本数(Y)

// 使い方
//
// 2文字版：
//   badge_2char(char1, char2, 
//               offset_x1, offset_y1, offset_x2, offset_y2, fontsize);
//
// 3文字版：
//   badge_3char(char1, char2, char3,
//               offset_x1, offset_y1, offset_x2, offset_y2,
//               offset_x3, offset_y3, fontsize);
//
// 4文字版：
//   badge_4char(char1, char2, char3, char4,
//               offset_x1, offset_y1, offset_x2, offset_y2, 
//               offset_x3, offset_y3, offset_x4, offset_y4, fontsize);
//
// where
//     charN   = N文字目の文字
//     offset_xN = N文字目の位置のX方向補正値(mm)
//     offset_yN = N文字目の位置のY方向補正値(mm)
//         where N=1,2,3,4
//     fontsize = フォントサイズ（推奨値：2文字版と3文字版は30, 4文字版は25）

translate([0,0])
    badge_2char("や", "す", 0, -3, 0, -3, 30);
translate([110,74])
    badge_3char("た", "く", "ほ", 0, 0, 0, 0, 0, 0, 30);
translate([0,74])
    badge_4char("り", "ゅ", "う", "た", 0, 0, 0, 0, 0, 0, 0, 0, 30);
translate([110,0])
    badge_2char("ゆ", "う", 0, -3, 0, -3, 30);




//
// 以下、サブモジュール
//

// 名札4文字版
// charN   = N文字目の文字
// offset_xN = N文字目の位置のX方向補正値(mm)
// offset_yN = N文字目の位置のY方向補正値(mm)
//     where N=1,2,3,4
// fontsize = フォントサイズ
module badge_name_4char(char1, char2, char3, char4,  offset_x1, offset_y1, offset_x2, offset_y2, offset_x3, offset_y3, offset_x4, offset_y4, fontsize){
     x1 = width/2-35+offset_x1;
     x2 = width/2-10+offset_x2;
     x3 = width/2+10+offset_x3;
     x4 = width/2+35+offset_x4;
     y1 = height*0.3+offset_y1;
     y2 = height*0.3+offset_y1;
     y3 = height*0.3+offset_y1;
     y4 = height*0.3+offset_y1;
    
     minkowski() {
        
        linear_extrude(height = 3, center = false, convexity = 10,
                           twist = 0, slices = 20, scale = 1.0) {
            translate([x1, y1,0])
            text(text = char1, font = "IPAexゴシック", halign = "center", valign="baseline", size = fontsize);
           
            translate([x2, y2,0])
            text(text = char2, font = "IPAexゴシック", halign = "center", valign="baseline", size = fontsize);

            translate([x3, y3,0])
            text(text = char3, font = "IPAexゴシック", halign = "center", valign="baseline", size = fontsize);

            translate([x4, y4,0])
            text(text = char4, font = "IPAexゴシック", halign = "center", valign="baseline", size = fontsize);

            }
        sphere(r=1.0,$fn=8);
    }
}

// 名札3文字版
// charN   = N文字目の文字
// offset_xN = N文字目の位置のX方向補正値(mm)
// offset_yN = N文字目の位置のY方向補正値(mm)
//     where N=1,2,3
// fontsize = フォントサイズ
module badge_name_3char(char1, char2, char3, offset_x1, offset_y1, offset_x2, offset_y2, offset_x3, offset_y3, fontsize){
     x1 = width/2-30+offset_x1;
     x2 = width/2   +offset_x2;
     x3 = width/2+30+offset_x3;
     y1 = height*0.3+offset_y1;
     y2 = height*0.3+offset_y2;
     y3 = height*0.3+offset_y3;
    
     minkowski() {
        
        linear_extrude(height = 3, center = false, convexity = 10,
                           twist = 0, slices = 20, scale = 1.0) {
            translate([x1, y1, 0])
            text(text = char1, font = "IPAexゴシック", halign = "center", valign="baseline", size = fontsize);
           
            translate([x2, y2, 0])
            text(text = char2, font = "IPAexゴシック", halign = "center", valign="baseline", size = fontsize);

            translate([x3, y3, 0])
            text(text = char3, font = "IPAexゴシック", halign = "center", valign="baseline", size = fontsize);
            }
        sphere(r=1.0,$fn=8);
    }
}

// 名札2文字版
// charN   = N文字目の文字
// offset_xN = N文字目の位置のX方向補正値(mm)
// offset_yN = N文字目の位置のY方向補正値(mm)
//     where N=1,2
// fontsize = フォントサイズ

module badge_name_2char(char1, char2, offset_x1, offset_y1, offset_x2, offset_y2, fontsize){
    x1 = width/2-20+offset_x1;
    y1 = height/2  +offset_y1;
    x2 = width/2+20+offset_x1;
    y2 = height/2  +offset_y2;
    
    minkowski() {
        linear_extrude(height = 3, center = false, convexity = 10,
                           twist = 0, slices = 20, scale = 1.0) {
            translate([x1, y1, 0])
                text(text = char1, font = "IPAexゴシック", halign = "center", valign="center", size = fontsize);
           
            translate([x2, y2, 0])
                text(text = char2, font = "IPAexゴシック", halign = "center", valign="center", size = fontsize);

            }
        sphere(r=1.0,$fn=8);
    }
}


module badge_4char(char1, char2, char3, char4,  offset_x1, offset_y1, offset_x2, offset_y2, offset_x3, offset_y3, offset_x4, offset_y4, fontsize){
    badge_name_4char(char1, char2, char3, char4,  offset_x1, offset_y1, offset_x2, offset_y2, offset_x3, offset_y3, offset_x4, offset_y4, fontsize);
    badge_body();
}

module badge_3char(char1, char2, char3, offset_x1, offset_y1, offset_x2, offset_y2, offset_x3, offset_y3, fontsize){
    badge_name_3char(char1, char2, char3, offset_x1, offset_y1, offset_x2, offset_y2, offset_x3, offset_y3, fontsize);
    badge_body();
}


module badge_2char(char1, char2, offset_x1, offset_y1, offset_x2, offset_y2, fontsize){
    badge_name_2char(char1, char2, offset_x1, offset_y1, offset_x2, offset_y2, fontsize);
    badge_body();
}

module badge_body() {
    // SIJPロゴ
    translate([width-12, 2])
       rotate([0, 0, 20]) scale([1.0,1.0,2.0]) logo(15, 15);

    // ストラップ取り付け部
    minkowski() {
        linear_extrude(height = 1, center = false, convexity = 10,
                           twist = 0, slices = 20, scale = 1.0) {
            translate([width/2-16, height+7])
                    square([32, 2]);
            translate([width/2-15-1, height])
                    square([2, 7]);
            translate([width/2+15-1, height])
                    square([2, 7]);
        }
        sphere(r=1.0, $fn=8);
    }

    // 外周
    minkowski() {
        linear_extrude(height = 1, center = false, convexity = 10,
                           twist = 0, slices = 20, scale = 1.0) {
            difference(){
                square([width, height]);
                translate([thick_outer/2, thick_outer/2])
                    square([width-thick_outer, height-thick_outer]);
            }
        }
        sphere(r=1.0, $fn=8);
    }

    // 格子（縦）
    translate([0, 0, -0.5])
    minkowski() {
        linear_extrude(height = 1, center = false, convexity = 10,
                           twist = 0, slices = 20, scale = 1.0) {

           for (ix = [1:cx-1]) {
                translate([ix*gap_x-thick/2, 0, -0.5])
                   square([thick, height]);
           }

        }
        sphere(r=0.5, $fn=8);
    }      

    // 格子（横）
    translate([0, 0, -0.5])
    minkowski() {
        linear_extrude(height = 1.0, center = false, convexity = 10,
                           twist = 0, slices = 20, scale = 1.0) {

           for (iy = [1:cy-1]) {
                translate([0, iy*gap_y-thick/2, 0])
                   square([width, thick]);
           }
        }
        sphere(r=0.5, $fn=8);
    }      
}


//
// SIJP logo
//
module logo(w, h) {
    t = 1;
    cx = w/2;
    cy = h/2;
    px = 12;
    py = 12;

    translate([0, 0, -0.5]) cube([11, 11, 0.5]);
    difference() {
        translate([0, 0, 0]) cube([11, 11, 1]);
        union() {
            translate([0.6, 0.6, -0.2]) cube([4.6, 4.6, 1.4]);
            translate([5.8, 0.6, -0.2]) cube([4.6, 4.6, 1.4]);
            translate([5.8, 5.8, -0.2]) cube([4.6, 4.6, 1.4]);
            translate([0.6, 5.8, -0.2]) cube([4.6, 4.6, 1.4]);
        }
    }
    linear_extrude(height = 1, center = false, convexity = 10,
                           twist = 0, slices = 20, scale = 1.0) {
        translate([2.8, 6.3, 0])
            text(text = "S", font = "Consolas:style=Bold", halign = "center", valign="baseline", size = 4);
        
        translate([8.0, 6.3, 0])
            text(text = "I", font = "Consolas:style=Bold", halign = "center", valign="baseline", size = 4);

        translate([2.8, 1.1, 0])
            text(text = "J", font = "Consolas:style=Bold", halign = "center", valign="baseline", size = 4);
        
        translate([8.0, 1.1, 0])
            text(text = "P", font = "Consolas:style=Bold", halign = "center", valign="baseline", size = 4);
    }                      
}                    



