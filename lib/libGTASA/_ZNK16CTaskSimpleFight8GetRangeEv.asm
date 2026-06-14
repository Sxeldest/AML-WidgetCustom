; =========================================================
; Game Engine Function: _ZNK16CTaskSimpleFight8GetRangeEv
; Address            : 0x4DA230 - 0x4DA24C
; =========================================================

4DA230:  LDRSB.W         R0, [R0,#0x24]
4DA234:  LDR             R1, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DA23C)
4DA236:  SUBS            R0, #4
4DA238:  ADD             R1, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DA23A:  IT LT
4DA23C:  MOVLT           R0, #0
4DA23E:  ADD.W           R0, R0, R0,LSL#4
4DA242:  LDR             R1, [R1]; CTaskSimpleFight::m_aComboData ...
4DA244:  ADD.W           R0, R1, R0,LSL#3
4DA248:  LDR             R0, [R0,#(dword_9FD464 - 0x9FD460)]
4DA24A:  BX              LR
