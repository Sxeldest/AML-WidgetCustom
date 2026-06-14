; =========================================================
; Game Engine Function: _ZN22CPedScriptedTaskRecord13GetVacantSlotEv
; Address            : 0x4C2B94 - 0x4C2BCC
; =========================================================

4C2B94:  LDR             R0, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x4C2B9A)
4C2B96:  ADD             R0, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
4C2B98:  LDR             R0, [R0]; CPedScriptedTaskRecord::ms_scriptedTasks ...
4C2B9A:  ADD.W           R1, R0, #8
4C2B9E:  MOV.W           R0, #0xFFFFFFFF
4C2BA2:  B               loc_4C2BB2
4C2BA4:  ADDS            R0, #1
4C2BA6:  ADDS            R1, #0x14
4C2BA8:  CMP             R0, #0x7F
4C2BAA:  ITT GE
4C2BAC:  MOVGE.W         R0, #0xFFFFFFFF
4C2BB0:  BXGE            LR
4C2BB2:  LDR.W           R2, [R1,#-4]
4C2BB6:  CMP             R2, #0
4C2BB8:  ITT EQ
4C2BBA:  LDREQ           R2, [R1]
4C2BBC:  CMPEQ           R2, #0
4C2BBE:  BNE             loc_4C2BA4
4C2BC0:  LDR             R2, [R1,#4]
4C2BC2:  CMP             R2, #0
4C2BC4:  ITT EQ
4C2BC6:  ADDEQ           R0, #1
4C2BC8:  BXEQ            LR
4C2BCA:  B               loc_4C2BA4
