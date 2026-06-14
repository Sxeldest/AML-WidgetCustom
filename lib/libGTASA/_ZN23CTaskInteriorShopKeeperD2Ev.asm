; =========================================================
; Game Engine Function: _ZN23CTaskInteriorShopKeeperD2Ev
; Address            : 0x52935C - 0x529374
; =========================================================

52935C:  LDR             R1, =(_ZTV23CTaskInteriorShopKeeper_ptr - 0x529362); Alternative name is 'CTaskInteriorShopKeeper::~CTaskInteriorShopKeeper()'
52935E:  ADD             R1, PC; _ZTV23CTaskInteriorShopKeeper_ptr
529360:  LDR             R2, [R1]; `vtable for'CTaskInteriorShopKeeper ...
529362:  LDR             R1, [R0,#0x18]
529364:  ADDS            R2, #8
529366:  STR             R2, [R0]
529368:  CMP             R1, #0
52936A:  ITT NE
52936C:  MOVNE           R2, #0
52936E:  STRBNE          R2, [R1,#1]
529370:  B.W             sub_18EDE8
