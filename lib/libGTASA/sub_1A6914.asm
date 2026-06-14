; =========================================================
; Game Engine Function: sub_1A6914
; Address            : 0x1A6914 - 0x1A6978
; =========================================================

1A6914:  PUSH            {R4-R7,LR}
1A6916:  ADD             R7, SP, #0xC
1A6918:  PUSH.W          {R11}
1A691C:  LDR             R0, =(g_procObjMan_ptr - 0x1A6924)
1A691E:  MOVS            R4, #0
1A6920:  ADD             R0, PC; g_procObjMan_ptr
1A6922:  LDR             R5, [R0]; g_procObjMan
1A6924:  ADDS            R0, R5, R4
1A6926:  ADDS            R0, #0x44 ; 'D'; this
1A6928:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
1A692C:  ADDS            R4, #0x48 ; 'H'
1A692E:  CMP.W           R4, #0x2400
1A6932:  BNE             loc_1A6924
1A6934:  LDR             R0, =(g_procObjMan_ptr - 0x1A6940)
1A6936:  MOVS            R4, #0
1A6938:  MOVW            R6, #0x2408
1A693C:  ADD             R0, PC; g_procObjMan_ptr
1A693E:  LDR             R5, [R0]; g_procObjMan
1A6940:  ADDS            R0, R5, R4
1A6942:  ADD             R0, R6; this
1A6944:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
1A6948:  ADDS            R4, #0x14
1A694A:  CMP.W           R4, #0x2800
1A694E:  BNE             loc_1A6940
1A6950:  LDR             R0, =(g_procObjMan_ptr - 0x1A6956)
1A6952:  ADD             R0, PC; g_procObjMan_ptr
1A6954:  LDR             R4, [R0]; g_procObjMan
1A6956:  MOVW            R0, #0x4C08
1A695A:  ADD             R0, R4; this
1A695C:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
1A6960:  LDR             R0, =(_ZN15ProcObjectMan_cD2Ev_ptr - 0x1A696A)
1A6962:  MOV             R1, R4; obj
1A6964:  LDR             R2, =(unk_67A000 - 0x1A696C)
1A6966:  ADD             R0, PC; _ZN15ProcObjectMan_cD2Ev_ptr
1A6968:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A696A:  LDR             R0, [R0]; ProcObjectMan_c::~ProcObjectMan_c() ; lpfunc
1A696C:  POP.W           {R11}
1A6970:  POP.W           {R4-R7,LR}
1A6974:  B.W             j___cxa_atexit
