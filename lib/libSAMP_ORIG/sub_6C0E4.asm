; =========================================================
; Game Engine Function: sub_6C0E4
; Address            : 0x6C0E4 - 0x6C112
; =========================================================

6C0E4:  PUSH            {R7,LR}
6C0E6:  MOV             R7, SP
6C0E8:  LDR             R1, =(aSampOrig - 0x6C0F2); "SAMP_ORIG" ...
6C0EA:  MOVS            R0, #4; prio
6C0EC:  LDR             R2, =(aSampInitialize - 0x6C0F4); "SAMP::initialize()" ...
6C0EE:  ADD             R1, PC; "SAMP_ORIG"
6C0F0:  ADD             R2, PC; "SAMP::initialize()"
6C0F2:  BLX             __android_log_print
6C0F6:  BL              sub_60F7C
6C0FA:  BL              sub_87B8C
6C0FE:  BL              sub_61AD0
6C102:  BL              sub_616D0
6C106:  BL              sub_67AC0
6C10A:  POP.W           {R7,LR}
6C10E:  B.W             sub_66180
