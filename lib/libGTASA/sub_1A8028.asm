; =========================================================
; Game Engine Function: sub_1A8028
; Address            : 0x1A8028 - 0x1A8042
; =========================================================

1A8028:  LDR             R0, =(mod_Buoyancy_ptr - 0x1A8030)
1A802A:  LDR             R3, =(_ZN9cBuoyancyD2Ev_ptr - 0x1A8034)
1A802C:  ADD             R0, PC; mod_Buoyancy_ptr
1A802E:  LDR             R2, =(unk_67A000 - 0x1A8038)
1A8030:  ADD             R3, PC; _ZN9cBuoyancyD2Ev_ptr
1A8032:  LDR             R1, [R0]; mod_Buoyancy ; obj
1A8034:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A8036:  LDR             R0, [R3]; cBuoyancy::~cBuoyancy() ; lpfunc
1A8038:  MOVS            R3, #0
1A803A:  STRD.W          R3, R3, [R1,#(dword_A06634 - 0xA065E8)]
1A803E:  B.W             j___cxa_atexit
