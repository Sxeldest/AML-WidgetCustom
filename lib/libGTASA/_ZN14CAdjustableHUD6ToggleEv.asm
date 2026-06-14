; =========================================================
; Game Engine Function: _ZN14CAdjustableHUD6ToggleEv
; Address            : 0x282090 - 0x2820C0
; =========================================================

282090:  PUSH            {R7,LR}
282092:  MOV             R7, SP
282094:  LDR             R0, =(_ZN14CAdjustableHUD11m_pInstanceE_ptr - 0x28209A)
282096:  ADD             R0, PC; _ZN14CAdjustableHUD11m_pInstanceE_ptr
282098:  LDR             R0, [R0]; CAdjustableHUD::m_pInstance ...
28209A:  LDR             R0, [R0]; this
28209C:  CBZ             R0, loc_2820AA
28209E:  BLX             j__ZN14CAdjustableHUDD2Ev; CAdjustableHUD::~CAdjustableHUD()
2820A2:  BLX             _ZdlPv; operator delete(void *)
2820A6:  MOVS            R0, #0
2820A8:  B               loc_2820B6
2820AA:  MOV.W           R0, #0x4B0; unsigned int
2820AE:  BLX             _Znwj; operator new(uint)
2820B2:  BLX             j__ZN14CAdjustableHUDC2Ev; CAdjustableHUD::CAdjustableHUD(void)
2820B6:  LDR             R1, =(_ZN14CAdjustableHUD11m_pInstanceE_ptr - 0x2820BC)
2820B8:  ADD             R1, PC; _ZN14CAdjustableHUD11m_pInstanceE_ptr
2820BA:  LDR             R1, [R1]; CAdjustableHUD::m_pInstance ...
2820BC:  STR             R0, [R1]; CAdjustableHUD::m_pInstance
2820BE:  POP             {R7,PC}
