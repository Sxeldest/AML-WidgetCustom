; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo13DisableEnvMapEv
; Address            : 0x387D68 - 0x387D7E
; =========================================================

387D68:  LDR             R0, [R0,#0x34]
387D6A:  CMP             R0, #0
387D6C:  IT EQ
387D6E:  BXEQ            LR
387D70:  LDR             R1, =(_ZN17CVehicleModelInfo25SetEnvironmentMapAtomicCBEP8RpAtomicPv_ptr - 0x387D7A)
387D72:  MOVW            R2, #0xFFFF
387D76:  ADD             R1, PC; _ZN17CVehicleModelInfo25SetEnvironmentMapAtomicCBEP8RpAtomicPv_ptr
387D78:  LDR             R1, [R1]; CVehicleModelInfo::SetEnvironmentMapAtomicCB(RpAtomic *,void *)
387D7A:  B.W             sub_18E45C
