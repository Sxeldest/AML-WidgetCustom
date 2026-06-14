; =========================================================
; Game Engine Function: _ZN14CBaseModelInfo6AddRefEv
; Address            : 0x385074 - 0x385084
; =========================================================

385074:  LDRSH.W         R1, [R0,#0x20]; int
385078:  LDRH            R2, [R0,#0x1E]
38507A:  ADDS            R2, #1
38507C:  STRH            R2, [R0,#0x1E]
38507E:  MOV             R0, R1; this
385080:  B.W             j_j__ZN9CTxdStore6AddRefEi; j_CTxdStore::AddRef(int)
