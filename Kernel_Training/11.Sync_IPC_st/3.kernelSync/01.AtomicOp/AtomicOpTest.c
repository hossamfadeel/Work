#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/init.h>

#include <linux/delay.h>
#include <linux/kthread.h>

atomic_t gcnt=ATOMIC_INIT(0);

struct task_struct *task1=NULL;
struct task_struct *task2=NULL;
struct task_struct *task3=NULL;

int thread1(void *unused)
{
	printk("thread1 start..\n");

	while(!kthread_should_stop()) {
		printk("[thread1_before(%d)!!]\n", atomic_read(&gcnt));

		atomic_inc(&gcnt);

		printk("[thread1_after(%d)!!]\n", atomic_read(&gcnt));
		msleep(500);
    }

	task1 = NULL;
	printk("thread1 exit..\n");
    return 0;
}

int thread2(void *unused)
{
	printk("\t\t-->thread2 start..\n");

	while(!kthread_should_stop()) {
		printk("\t\t-->thread2_before(%d)!!\n", atomic_read(&gcnt));

		atomic_add(100, &gcnt);

		printk("\t\t-->thread2_after(%d)!!\n", atomic_read(&gcnt));
		msleep(500);
    }

	task2 = NULL;
	printk("\t\t-->thread2 exit..\n");
    return 0;
}

int thread3(void *unused)
{
	int cnt=0;

	while(!kthread_should_stop()) {
		printk("\t\t-->thread3(%d)!!\n", ++cnt);
		msleep(1000);
    }

	task3 = NULL;
	printk("\t\t\t==>thread3 exit..\n");
    return 0;
}

int AtomicOpTest_init(void)
{
	printk("AtomicOpTest Module id Loaded ....\n");

	task1 = kthread_create(thread1, NULL, "%s", "thread1");
	if (task1) wake_up_process(task1);
	printk("Kernel Thread Create Done(task1:%p)!!\n", task1);

	task2 = kthread_create(thread2, NULL, "%s", "thread2");
	if (task2) wake_up_process(task2);
	printk("Kernel Thread Create Done(task2:%p)!!\n", task2);

	task3 = kthread_create(thread3, NULL, "%s", "thread3");
	if (task3) wake_up_process(task3);
	printk("Kernel Thread Create Done(task3:%p)!!\n", task3);

	return 0;
}

void AtomicOpTest_exit(void)
{
	if(task1) {
		printk("task1 thread stopped(%p)!!\n", task1);
		kthread_stop(task1);
	}
	if(task2) {
		printk("task2 thread stopped(%p)!!\n", task2);
		kthread_stop(task2);
	}
	if(task3) {
		printk("task3 thread stopped(%p)!!\n", task3);
		kthread_stop(task3);
	}

	printk("AtomicOpTest Module is Unloaded ....\n");
}

module_init(AtomicOpTest_init);
module_exit(AtomicOpTest_exit);

MODULE_LICENSE("Dual BSD/GPL");
