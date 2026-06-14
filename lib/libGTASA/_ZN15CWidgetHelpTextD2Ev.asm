; =========================================================
; Game Engine Function: _ZN15CWidgetHelpTextD2Ev
; Address            : 0x2B6FB4 - 0x2B6FCC
; =========================================================

2B6FB4:  LDR             R1, =(_ZTV15CWidgetHelpText_ptr - 0x2B6FBC); Alternative name is 'CWidgetHelpText::~CWidgetHelpText()'
2B6FB6:  LDR             R2, =(_ZN15CWidgetHelpText11m_pInstanceE_ptr - 0x2B6FBE)
2B6FB8:  ADD             R1, PC; _ZTV15CWidgetHelpText_ptr
2B6FBA:  ADD             R2, PC; _ZN15CWidgetHelpText11m_pInstanceE_ptr
2B6FBC:  LDR             R1, [R1]; `vtable for'CWidgetHelpText ...
2B6FBE:  LDR             R2, [R2]; CWidgetHelpText::m_pInstance ...
2B6FC0:  ADDS            R1, #8
2B6FC2:  STR             R1, [R0]
2B6FC4:  MOVS            R1, #0
2B6FC6:  STR             R1, [R2]; CWidgetHelpText::m_pInstance
2B6FC8:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
