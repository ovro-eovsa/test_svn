#!/bin/sh

#2016-05-11-jmm Note the this is done to route interrupt requests away
#from CPU's 16-31, which are now being used to run dppxmp. Also
#interrupts for eth2 and 3, the 10 Gbit NICs (Network Interface Cards)
#are routed to CPUs 1 and 2. Most of the rest of the interrupts are
#sent to CPUs (0, 3-15) here are the commands:
#Note also that irq_balance is turned off: ENABLED=0 in /etc/default/irqbalance
#It looks like this needs to be done after every reboot
#2017-07-18, jmm, CHanged default affinty for mos from fff9 (0, 3-15) to 7ff9 (0, 3-14)

sudo bash -c 'echo 4 > /proc/irq/95/smp_affinity' #(CPU 2)
sudo bash -c 'echo 2 > /proc/irq/94/smp_affinity' #(CPU 1) #not needed, as it was set
sudo bash -c 'echo 7ff9 > /proc/irq/9/smp_affinity'

sudo bash -c 'echo 7ff9 > /proc/irq/83/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/82/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/81/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/80/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/8/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/79/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/78/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/77/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/76/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/7/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/6/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/5/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/4/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/3/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/22/smp_affinity'
#sudo bash -c 'echo 7ff9 > /proc/irq/2/smp_affinity'
#bash: line 0: echo: write error: Input/output error
sudo bash -c 'echo 7ff9 > /proc/irq/19/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/18/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/17/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/16/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/15/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/14/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/13/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/12/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/11/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/10/smp_affinity'
sudo bash -c 'echo 7ff9 > /proc/irq/1/smp_affinity'
#sudo bash -c 'echo 7ff9 > /proc/irq/0/smp_affinity'
#bash: line 0: echo: write error: Input/output error

#Note that procs 0 and 2 (timer and ??? 2 isn't in the /proc/interrupts file) didn't work, so those remain options to all CPUs. 

#So most interrupts look like this:

# sudo cat /proc/irq/22/smp_affinity
# 00007ff9
# sudo cat /proc/irq/22/smp_affinity_list
# 0,3-14

#except for eth2 and eth3:
# sudo cat /proc/irq/94/smp_affinity_list
# 1
# sudo cat /proc/irq/95/smp_affinity_list
# 2

# As of 2016-05-11 -- the irqbalance program is still running, but was
#  turned off in June

