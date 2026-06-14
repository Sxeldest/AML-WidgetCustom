; =========================================================
; Game Engine Function: _Z18NVEventGetEventStr11NVEventType
; Address            : 0x27114C - 0x271162
; =========================================================

27114C:  SUBS            R0, #1
27114E:  CMP             R0, #9
271150:  BHI             loc_27115C
271152:  LDR             R1, =(off_661F10 - 0x271158); "NV_EVENT_KEY" ...
271154:  ADD             R1, PC; off_661F10
271156:  LDR.W           R0, [R1,R0,LSL#2]
27115A:  BX              LR
27115C:  LDR             R0, =(aUnknownEventTy - 0x271162); "unknown event type!"
27115E:  ADD             R0, PC; "unknown event type!"
271160:  BX              LR
