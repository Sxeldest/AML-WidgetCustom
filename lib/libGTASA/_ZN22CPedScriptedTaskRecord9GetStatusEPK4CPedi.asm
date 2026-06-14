; =========================================================
; Game Engine Function: _ZN22CPedScriptedTaskRecord9GetStatusEPK4CPedi
; Address            : 0x4C2E90 - 0x4C2ECA
; =========================================================

4C2E90:  LDR             R2, =(_ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr - 0x4C2E9A)
4C2E92:  MOV.W           R12, #0xFFFFFFFF
4C2E96:  ADD             R2, PC; _ZN22CPedScriptedTaskRecord16ms_scriptedTasksE_ptr
4C2E98:  LDR             R2, [R2]; CPedScriptedTaskRecord::ms_scriptedTasks ...
4C2E9A:  ADDS            R2, #0x10
4C2E9C:  B               loc_4C2EB0
4C2E9E:  ADD.W           R12, R12, #1
4C2EA2:  ADDS            R2, #0x14
4C2EA4:  CMP.W           R12, #0x7F
4C2EA8:  ITT GE
4C2EAA:  MOVGE.W         R0, #0xFFFFFFFF
4C2EAE:  BXGE            LR
4C2EB0:  ADDS            R3, R1, #1
4C2EB2:  ITT NE
4C2EB4:  LDRNE.W         R3, [R2,#-0x10]; CPedScriptedTaskRecord::ms_scriptedTasks
4C2EB8:  CMPNE           R3, R1
4C2EBA:  BNE             loc_4C2E9E
4C2EBC:  LDR.W           R3, [R2,#-4]
4C2EC0:  CMP             R3, R0
4C2EC2:  ITT EQ
4C2EC4:  LDREQ           R0, [R2]
4C2EC6:  BXEQ            LR
4C2EC8:  B               loc_4C2E9E
