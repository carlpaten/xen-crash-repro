ENTRY(_start)

SECTIONS {
    .bss : ALIGN(0x1000) {
        HYPERCALL_PAGE = .;
        . += 0x1000;
        *(.bss);
        *(.bss.*);
    } = 0xCC 
    .text : {
        *(.text);
        *(.text.*);
    } = 0xCC
    .data : {
        *(.data);
        *(.data.*);
    } = 0xCC
    .note : {
        *(.note.Xen);
    }
}
