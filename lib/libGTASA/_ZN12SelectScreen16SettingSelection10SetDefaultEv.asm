; =========================================================
; Game Engine Function: _ZN12SelectScreen16SettingSelection10SetDefaultEv
; Address            : 0x2A487C - 0x2A4898
; =========================================================

2A487C:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x2A4884)
2A487E:  LDR             R2, [R0,#8]
2A4880:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
2A4882:  LDR             R1, [R1]; MobileSettings::settings ...
2A4884:  ADD.W           R1, R1, R2,LSL#5
2A4888:  LDR             R2, [R1,#0xC]
2A488A:  STR             R2, [R1,#8]
2A488C:  LDR             R0, [R0,#8]; this
2A488E:  CMP             R0, #9
2A4890:  IT EQ
2A4892:  BEQ.W           j_j__ZN15CTouchInterface18SetupLayoutObjectsEv; j_CTouchInterface::SetupLayoutObjects(void)
2A4896:  BX              LR
