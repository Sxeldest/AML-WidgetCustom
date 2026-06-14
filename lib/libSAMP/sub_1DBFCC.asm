; =========================================================
; Game Engine Function: sub_1DBFCC
; Address            : 0x1DBFCC - 0x1DBFE8
; =========================================================

1DBFCC:  CMP             R2, #0x17
1DBFD0:  LDRBEQ          R0, [R0,#0x34]
1DBFD4:  STREQ           R0, [R3]
1DBFD8:  BXEQ            LR
1DBFDC:  MOV             R0, R1
1DBFE0:  MOVW            R1, #0xA002
1DBFE4:  B               j_alSetError
