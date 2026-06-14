; =========================================================
; Game Engine Function: _ZN20CTaskInteriorUseInfoD2Ev
; Address            : 0x5297D8 - 0x5297F0
; =========================================================

5297D8:  LDR             R1, =(_ZTV20CTaskInteriorUseInfo_ptr - 0x5297DE); Alternative name is 'CTaskInteriorUseInfo::~CTaskInteriorUseInfo()'
5297DA:  ADD             R1, PC; _ZTV20CTaskInteriorUseInfo_ptr
5297DC:  LDR             R2, [R1]; `vtable for'CTaskInteriorUseInfo ...
5297DE:  LDR             R1, [R0,#0xC]
5297E0:  ADDS            R2, #8
5297E2:  STR             R2, [R0]
5297E4:  CMP             R1, #0
5297E6:  ITT NE
5297E8:  MOVNE           R2, #0
5297EA:  STRBNE          R2, [R1,#1]
5297EC:  B.W             sub_18EDE8
