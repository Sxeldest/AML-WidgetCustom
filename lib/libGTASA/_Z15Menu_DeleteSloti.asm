; =========================================================
; Game Engine Function: _Z15Menu_DeleteSloti
; Address            : 0x2A9438 - 0x2A9446
; =========================================================

2A9438:  LDR             R1, =(PcSaveHelper_ptr - 0x2A943E)
2A943A:  ADD             R1, PC; PcSaveHelper_ptr
2A943C:  LDR             R2, [R1]; PcSaveHelper
2A943E:  SXTB            R1, R0; signed __int8
2A9440:  MOV             R0, R2; this
2A9442:  B.W             j_j__ZN8C_PcSave10DeleteSlotEa; j_C_PcSave::DeleteSlot(signed char)
