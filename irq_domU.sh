#!/bin/bash
counter=0
for irq in `grep -E "eth1-q[0-4]-rx" /proc/interrupts | cut -d: -f1`; do \
        cat /proc/irq/$irq/smp_affinity
        mask=$((1<<$counter))
        echo $mask > /proc/irq/$irq/smp_affinity;
        cat /proc/irq/$irq/smp_affinity
        let counter+=1
done
