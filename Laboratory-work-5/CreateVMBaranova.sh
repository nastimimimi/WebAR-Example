VBoxManage modifyvm "Linux of Baranova 2" --cpus 1
VBoxManage modifyvm "Linux of Baranova 2" --memory 2314
VBoxManage modifyvm "Linux of Baranova 2" --vram 131
VBoxManage modifyvm "Linux of Baranova 2" --nic1 nat
VBoxManage modifyvm "Linux of Baranova 2" --natpf1 "SSH,tcp,127.0.0.1,1234,10.0.2.15,22"
VBoxManage storagectl "Linux of Baranova 2" --name "BaranovaSATA" --add sata --controller IntelAHCI
VBoxManage storagectl "Linux of Baranova 2" --name "BaranovaIDE" --add ide --controller PIIX4
VBoxManage createmedium disk --filename "DiskBaranova.vdi" --size 9240
VBoxManage startvm "Linux of Baranova 2" --type headless
VBoxManage controlvm "Linux of Baranova 2" pause
VBoxManage controlvm "Linux of Baranova 2" resume
VBoxManage controlvm "Linux of Baranova 2" poweroff
VBoxManage unregistervm "Linux of Baranova 2" --delete
