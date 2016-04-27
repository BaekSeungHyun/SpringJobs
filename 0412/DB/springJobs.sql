-- �б�
ALTER TABLE `USCLS`
	DROP FOREIGN KEY `FK_USERS_TO_USCLS`; -- ȸ�� -> �б�

-- ���
ALTER TABLE `UEXPS`
	DROP FOREIGN KEY `FK_USERS_TO_UEXPS`; -- ȸ�� -> ���

-- �������
ALTER TABLE `CINFOS`
	DROP FOREIGN KEY `FK_USERS_TO_CINFOS`; -- ȸ�� -> �������

-- ���ΰ���
ALTER TABLE `CRECS`
	DROP FOREIGN KEY `FK_CINFOS_TO_CRECS`; -- ������� -> ���ΰ���

-- �������
ALTER TABLE `CPHOTS`
	DROP FOREIGN KEY `FK_CINFOS_TO_CPHOTS`; -- ������� -> �������

-- ����±�
ALTER TABLE `CTAGS`
	DROP FOREIGN KEY `FK_CINFOS_TO_CTAGS`; -- ������� -> ����±�

-- �ڰ���
ALTER TABLE `UCERTS`
	DROP FOREIGN KEY `FK_USERS_TO_UCERTS`; -- ȸ�� -> �ڰ���

-- �ܱ���
ALTER TABLE `ULANS`
	DROP FOREIGN KEY `FK_USERS_TO_ULANS`; -- ȸ�� -> �ܱ���

-- �������
ALTER TABLE `YSKILLS`
	DROP FOREIGN KEY `FK_SKILLS_TO_YSKILLS`; -- ������� -> �������

-- �������
ALTER TABLE `YSKILLS`
	DROP FOREIGN KEY `FK_USERS_TO_YSKILLS`; -- ȸ�� -> �������

-- ������������Ʈ
ALTER TABLE `CPJTS`
	DROP FOREIGN KEY `FK_CINFOS_TO_CPJTS`; -- ������� -> ������������Ʈ

-- ������Ʈ���
ALTER TABLE `UPJTNO`
	DROP FOREIGN KEY `FK_USERS_TO_UPJTNO`; -- ȸ�� -> ������Ʈ���

-- ������Ʈ�������ǰԽ���
ALTER TABLE `PJTBDS`
	DROP FOREIGN KEY `FK_CPJTS_TO_PJTBDS`; -- ������������Ʈ -> ������Ʈ�������ǰԽ���

-- ������Ʈ�������ǰԽ���
ALTER TABLE `PJTBDS`
	DROP FOREIGN KEY `FK_USERS_TO_PJTBDS`; -- ȸ�� -> ������Ʈ�������ǰԽ���

-- ������Ʈ÷������
ALTER TABLE `CPJTATCHS`
	DROP FOREIGN KEY `FK_CPJTS_TO_CPJTATCHS`; -- ������������Ʈ -> ������Ʈ÷������

-- ȸ������
ALTER TABLE `UPHOTS`
	DROP FOREIGN KEY `FK_USERS_TO_UPHOTS`; -- ȸ�� -> ȸ������

-- ȸ���±�
ALTER TABLE `UTAGS`
	DROP FOREIGN KEY `FK_USERS_TO_UTAGS`; -- ȸ�� -> ȸ���±�

-- ��������÷������
ALTER TABLE `CREATCHS`
	DROP FOREIGN KEY `FK_CRECS_TO_CREATCHS`; -- ���ΰ��� -> ��������÷������

-- ���������ʿ���
ALTER TABLE `CRESKILLS`
	DROP FOREIGN KEY `FK_CRECS_TO_CRESKILLS`; -- ���ΰ��� -> ���������ʿ���

-- ���������ʿ���
ALTER TABLE `CRESKILLS`
	DROP FOREIGN KEY `FK_SKILLS_TO_CRESKILLS`; -- ������� -> ���������ʿ���

-- ������Ʈ�ʿ���
ALTER TABLE `CPJTSKILLS`
	DROP FOREIGN KEY `FK_CPJTS_TO_CPJTSKILLS`; -- ������������Ʈ -> ������Ʈ�ʿ���

-- ������Ʈ�ʿ���
ALTER TABLE `CPJTSKILLS`
	DROP FOREIGN KEY `FK_SKILLS_TO_CPJTSKILLS`; -- ������� -> ������Ʈ�ʿ���

-- �����������ǰԽ���
ALTER TABLE `REBDS`
	DROP FOREIGN KEY `FK_CRECS_TO_REBDS`; -- ���ΰ��� -> �����������ǰԽ���

-- �����������ǰԽ���
ALTER TABLE `REBDS`
	DROP FOREIGN KEY `FK_USERS_TO_REBDS`; -- ȸ�� -> �����������ǰԽ���

-- ȸ��
DROP TABLE IF EXISTS `USERS` RESTRICT;

-- �б�
DROP TABLE IF EXISTS `USCLS` RESTRICT;

-- ���
DROP TABLE IF EXISTS `UEXPS` RESTRICT;

-- �������
DROP TABLE IF EXISTS `CINFOS` RESTRICT;

-- ���ΰ���
DROP TABLE IF EXISTS `CRECS` RESTRICT;

-- �������
DROP TABLE IF EXISTS `CPHOTS` RESTRICT;

-- ����±�
DROP TABLE IF EXISTS `CTAGS` RESTRICT;

-- �ڰ���
DROP TABLE IF EXISTS `UCERTS` RESTRICT;

-- �ܱ���
DROP TABLE IF EXISTS `ULANS` RESTRICT;

-- �������
DROP TABLE IF EXISTS `SKILLS` RESTRICT;

-- �������
DROP TABLE IF EXISTS `YSKILLS` RESTRICT;

-- ������������Ʈ
DROP TABLE IF EXISTS `CPJTS` RESTRICT;

-- ������Ʈ���
DROP TABLE IF EXISTS `UPJTNO` RESTRICT;

-- ������Ʈ�������ǰԽ���
DROP TABLE IF EXISTS `PJTBDS` RESTRICT;

-- ������Ʈ÷������
DROP TABLE IF EXISTS `CPJTATCHS` RESTRICT;

-- ȸ������
DROP TABLE IF EXISTS `UPHOTS` RESTRICT;

-- ȸ���±�
DROP TABLE IF EXISTS `UTAGS` RESTRICT;

-- ��������÷������
DROP TABLE IF EXISTS `CREATCHS` RESTRICT;

-- ���������ʿ���
DROP TABLE IF EXISTS `CRESKILLS` RESTRICT;

-- ������Ʈ�ʿ���
DROP TABLE IF EXISTS `CPJTSKILLS` RESTRICT;

-- �����������ǰԽ���
DROP TABLE IF EXISTS `REBDS` RESTRICT;

-- ȸ��
CREATE TABLE `USERS` (
	`UNO`  INTEGER      NOT NULL COMMENT 'ȸ���Ϸù�ȣ', -- ȸ���Ϸù�ȣ
	`UNM`  VARCHAR(50)  NOT NULL COMMENT 'ȸ���̸�', -- ȸ���̸�
	`UENM` VARCHAR(50)  NULL     COMMENT 'ȸ�������̸�', -- ȸ�������̸�
	`UEM`  VARCHAR(40)  NOT NULL COMMENT '�̸���', -- �̸���
	`UPW`  VARCHAR(20)  NOT NULL COMMENT '��й�ȣ', -- ��й�ȣ
	`UCO`  VARCHAR(20)  NULL     COMMENT '����', -- ����
	`USX`  VARCHAR(20)  NULL     COMMENT '����', -- ����
	`UCNF` VARCHAR(20)  NOT NULL COMMENT '��������', -- ��������
	`UBD`  DATE         NULL     COMMENT '�������', -- �������
	`UPHO` VARCHAR(30)  NULL     COMMENT '����ó', -- ����ó
	`UADR` VARCHAR(255) NULL     COMMENT '�������ּ�', -- �������ּ�
	`UURL` VARCHAR(255) NULL     COMMENT 'ȸ���ֿ�URL', -- ȸ���ֿ�URL
	`URES` VARCHAR(255) NULL     COMMENT 'ȸ���ڱ�Ұ���' -- ȸ���ڱ�Ұ���
)
COMMENT 'ȸ��';

-- ȸ��
ALTER TABLE `USERS`
	ADD CONSTRAINT `PK_USERS` -- ȸ�� �⺻Ű
		PRIMARY KEY (
			`UNO` -- ȸ���Ϸù�ȣ
		);

-- ȸ�� ����ũ �ε���
CREATE UNIQUE INDEX `UIX_USERS`
	ON `USERS` ( -- ȸ��
		`UEM` ASC -- �̸���
	);

-- �б�
CREATE TABLE `USCLS` (
	`SCNO` INTEGER     NOT NULL COMMENT '�б��Ϸù�ȣ', -- �б��Ϸù�ȣ
	`SCNM` VARCHAR(50) NOT NULL COMMENT '�б���', -- �б���
	`SCMJ` VARCHAR(50) NOT NULL COMMENT '�б�������', -- �б�������
	`SCGR` INTEGER     NOT NULL COMMENT '�б�����', -- �б�����
	`SCSD` DATE        NOT NULL COMMENT '�б�������', -- �б�������
	`SCED` DATE        NOT NULL COMMENT '�б�������', -- �б�������
	`UNO`  INTEGER     NOT NULL COMMENT 'ȸ���Ϸù�ȣ' -- ȸ���Ϸù�ȣ
)
COMMENT '�б�';

-- �б�
ALTER TABLE `USCLS`
	ADD CONSTRAINT `PK_USCLS` -- �б� �⺻Ű
		PRIMARY KEY (
			`SCNO` -- �б��Ϸù�ȣ
		);

-- ���
CREATE TABLE `UEXPS` (
	`EXPNO` INTEGER      NOT NULL COMMENT '����Ϸù�ȣ', -- ����Ϸù�ȣ
	`EXPCN` VARCHAR(50)  NOT NULL COMMENT '���ȸ���', -- ���ȸ���
	`EXPDN` VARCHAR(50)  NOT NULL COMMENT '��ºμ���', -- ��ºμ���
	`EXPPY` INTEGER      NULL     COMMENT '��±޿�', -- ��±޿�
	`EXPSD` DATE         NOT NULL COMMENT '����Ի���', -- ����Ի���
	`EXPED` DATE         NOT NULL COMMENT '��������', -- ��������
	`EXPWC` VARCHAR(255) NOT NULL COMMENT '��¾�������', -- ��¾�������
	`EXPPT` VARCHAR(20)  NULL     COMMENT '�����å', -- �����å
	`UNO`   INTEGER      NOT NULL COMMENT 'ȸ���Ϸù�ȣ' -- ȸ���Ϸù�ȣ
)
COMMENT '���';

-- ���
ALTER TABLE `UEXPS`
	ADD CONSTRAINT `PK_UEXPS` -- ��� �⺻Ű
		PRIMARY KEY (
			`EXPNO` -- ����Ϸù�ȣ
		);

-- �������
CREATE TABLE `CINFOS` (
	`CNO`   INTEGER      NOT NULL COMMENT '����Ϸù�ȣ', -- ����Ϸù�ȣ
	`CCT`   VARCHAR(20)  NOT NULL COMMENT '����о�', -- ����о�
	`CRGNO` INTEGER      NULL     COMMENT '����ڹ�ȣ', -- ����ڹ�ȣ
	`CNM`   VARCHAR(50)  NOT NULL COMMENT 'ȸ���', -- ȸ���
	`CSCL`  VARCHAR(20)  NULL     COMMENT '����Ը�', -- ����Ը�
	`CLO`   VARCHAR(255) NULL     COMMENT '�����ġ', -- �����ġ
	`CNPL`  INTEGER      NULL     COMMENT '����ο�', -- ����ο�
	`CINT`  VARCHAR(255) NULL     COMMENT '�������', -- �������
	`UNO`   INTEGER      NULL     COMMENT 'ȸ���Ϸù�ȣ' -- ȸ���Ϸù�ȣ
)
COMMENT '�������';

-- �������
ALTER TABLE `CINFOS`
	ADD CONSTRAINT `PK_CINFOS` -- ������� �⺻Ű
		PRIMARY KEY (
			`CNO` -- ����Ϸù�ȣ
		);

-- ������� ����ũ �ε���
CREATE UNIQUE INDEX `UIX_CINFOS`
	ON `CINFOS` ( -- �������
		`CRGNO` ASC -- ����ڹ�ȣ
	);

-- ���ΰ���
CREATE TABLE `CRECS` (
	`RENO`  INTEGER      NOT NULL COMMENT '�����Ϸù�ȣ', -- �����Ϸù�ȣ
	`RETL`  VARCHAR(100) NOT NULL COMMENT 'ä���������', -- ä���������
	`RECNM` VARCHAR(50)  NOT NULL COMMENT 'ȸ���', -- ȸ���
	`REWC`  VARCHAR(255) NOT NULL COMMENT '�ֿ����', -- �ֿ����
	`RENPL` INTEGER      NOT NULL COMMENT '�����ο�', -- �����ο�
	`RECHK` CHAR(1)      NOT NULL COMMENT '��¿���', -- ��¿���
	`REYR`  VARCHAR(20)  NULL     COMMENT '��¿���', -- ��¿���
	`REIDT` VARCHAR(20)  NOT NULL COMMENT '����', -- ����
	`REJP`  VARCHAR(20)  NOT NULL COMMENT '����', -- ����
	`RETP`  VARCHAR(20)  NOT NULL COMMENT '�������', -- �������
	`REPAY` INTEGER      NULL     COMMENT '�޿�', -- �޿�
	`RERG`  VARCHAR(50)  NULL     COMMENT '�Խ���', -- �Խ���
	`RERD`  DATE         NOT NULL COMMENT '�Խ���', -- �Խ���
	`REED`  DATE         NOT NULL COMMENT '������', -- ������
	`REHTN` INTEGER      NULL     COMMENT '��ȸ��', -- ��ȸ��
	`REAR`  VARCHAR(255) NOT NULL COMMENT '����', -- ����
	`REWT`  VARCHAR(20)  NOT NULL COMMENT '�ٹ�����', -- �ٹ�����
	`CNO`   INTEGER      NOT NULL COMMENT '����Ϸù�ȣ' -- ����Ϸù�ȣ
)
COMMENT '���ΰ���';

-- ���ΰ���
ALTER TABLE `CRECS`
	ADD CONSTRAINT `PK_CRECS` -- ���ΰ��� �⺻Ű
		PRIMARY KEY (
			`RENO` -- �����Ϸù�ȣ
		);

-- �������
CREATE TABLE `CPHOTS` (
	`CPHNO` INTEGER      NOT NULL COMMENT '�����Ϸù�ȣ', -- �����Ϸù�ȣ
	`CPH`   VARCHAR(255) NOT NULL COMMENT '����', -- ����
	`CNO`   INTEGER      NOT NULL COMMENT '����Ϸù�ȣ' -- ����Ϸù�ȣ
)
COMMENT '�������';

-- �������
ALTER TABLE `CPHOTS`
	ADD CONSTRAINT `PK_CPHOTS` -- ������� �⺻Ű
		PRIMARY KEY (
			`CPHNO` -- �����Ϸù�ȣ
		);

-- ����±�
CREATE TABLE `CTAGS` (
	`CEXNO` INTEGER     NOT NULL COMMENT '�����±��Ϸù�ȣ', -- �����±��Ϸù�ȣ
	`CEXTG` VARCHAR(50) NOT NULL COMMENT '�����±�', -- �����±�
	`CNO`   INTEGER     NOT NULL COMMENT '����Ϸù�ȣ' -- ����Ϸù�ȣ
)
COMMENT '����±�';

-- ����±�
ALTER TABLE `CTAGS`
	ADD CONSTRAINT `PK_CTAGS` -- ����±� �⺻Ű
		PRIMARY KEY (
			`CEXNO` -- �����±��Ϸù�ȣ
		);

-- �ڰ���
CREATE TABLE `UCERTS` (
	`CTNO`   INTEGER      NOT NULL COMMENT '�ڰ����Ϸù�ȣ', -- �ڰ����Ϸù�ȣ
	`CTNM`   VARCHAR(50)  NOT NULL COMMENT '�ڰ�����', -- �ڰ�����
	`CTAG`   VARCHAR(50)  NOT NULL COMMENT '�������', -- �������
	`CTUQNO` INTEGER      NOT NULL COMMENT '�ڰ�����ȣ', -- �ڰ�����ȣ
	`CTSC`   INTEGER      NOT NULL COMMENT '����', -- ����
	`CTURL`  VARCHAR(255) NULL     COMMENT '�ڰ���URL', -- �ڰ���URL
	`CTDY`   DATE         NULL     COMMENT '������', -- ������
	`CTSD`   DATE         NOT NULL COMMENT '�߱���', -- �߱���
	`CTED`   DATE         NULL     COMMENT '������', -- ������
	`UNO`    INTEGER      NOT NULL COMMENT 'ȸ���Ϸù�ȣ' -- ȸ���Ϸù�ȣ
)
COMMENT '�ڰ���';

-- �ڰ���
ALTER TABLE `UCERTS`
	ADD CONSTRAINT `PK_UCERTS` -- �ڰ��� �⺻Ű
		PRIMARY KEY (
			`CTNO` -- �ڰ����Ϸù�ȣ
		);

-- �ܱ���
CREATE TABLE `ULANS` (
	`LGNO`  INTEGER      NOT NULL COMMENT '�ܱ����Ϸù�ȣ', -- �ܱ����Ϸù�ȣ
	`LGNM`  VARCHAR(50)  NOT NULL COMMENT '�ܱ����̸�', -- �ܱ����̸�
	`LGLVL` VARCHAR(255) NOT NULL COMMENT '�ܱ������', -- �ܱ������
	`UNO`   INTEGER      NOT NULL COMMENT 'ȸ���Ϸù�ȣ' -- ȸ���Ϸù�ȣ
)
COMMENT '�ܱ���';

-- �ܱ���
ALTER TABLE `ULANS`
	ADD CONSTRAINT `PK_ULANS` -- �ܱ��� �⺻Ű
		PRIMARY KEY (
			`LGNO` -- �ܱ����Ϸù�ȣ
		);

-- �������
CREATE TABLE `SKILLS` (
	`SKNO` INTEGER      NOT NULL COMMENT '��������Ϸù�ȣ', -- ��������Ϸù�ȣ
	`SKNM` VARCHAR(100) NOT NULL COMMENT '�����' -- �����
)
COMMENT '�������';

-- �������
ALTER TABLE `SKILLS`
	ADD CONSTRAINT `PK_SKILLS` -- ������� �⺻Ű
		PRIMARY KEY (
			`SKNO` -- ��������Ϸù�ȣ
		);

-- �������
CREATE TABLE `YSKILLS` (
	`YSNO` INTEGER     NOT NULL COMMENT '��������Ϸù�ȣ', -- ��������Ϸù�ȣ
	`UNO`  INTEGER     NOT NULL COMMENT 'ȸ���Ϸù�ȣ', -- ȸ���Ϸù�ȣ
	`SKNO` INTEGER     NOT NULL COMMENT '��������Ϸù�ȣ', -- ��������Ϸù�ȣ
	`YSYR` VARCHAR(20) NOT NULL COMMENT '�������' -- �������
)
COMMENT '�������';

-- �������
ALTER TABLE `YSKILLS`
	ADD CONSTRAINT `PK_YSKILLS` -- ������� �⺻Ű
		PRIMARY KEY (
			`YSNO` -- ��������Ϸù�ȣ
		);

-- ������������Ʈ
CREATE TABLE `CPJTS` (
	`CPJNO`  INTEGER      NOT NULL COMMENT '���������Ʈ�Ϸù�ȣ', -- ���������Ʈ�Ϸù�ȣ
	`CPJNM`  VARCHAR(50)  NOT NULL COMMENT '�̸�', -- �̸�
	`CPJINT` VARCHAR(255) NOT NULL COMMENT '����', -- ����
	`CPJCHK` CHAR(1)      NOT NULL COMMENT '������Ʈ��¿���', -- ������Ʈ��¿���
	`CPJYR`  INTEGER      NULL     COMMENT '������Ʈ��¿���', -- ������Ʈ��¿���
	`CPJNPL` INTEGER      NOT NULL COMMENT '�����ο�', -- �����ο�
	`CPJMNP` INTEGER      NOT NULL COMMENT '�޿��ּ�', -- �޿��ּ�
	`CPJMAP` INTEGER      NOT NULL COMMENT '�޿��ִ�', -- �޿��ִ�
	`CPJHTN` INTEGER      NULL     COMMENT '��ȸ��', -- ��ȸ��
	`CPJRD`  DATE         NOT NULL COMMENT '�����', -- �����
	`CPJED`  DATE         NOT NULL COMMENT '������', -- ������
	`CPJSD`  DATE         NOT NULL COMMENT '������', -- ������
	`CPJRG`  VARCHAR(50)  NOT NULL COMMENT '�Խ���', -- �Խ���
	`CPJWT`  VARCHAR(20)  NOT NULL COMMENT '�ٹ�����', -- �ٹ�����
	`CPJAR`  VARCHAR(255) NOT NULL COMMENT '������', -- ������
	`CNO`    INTEGER      NOT NULL COMMENT '����Ϸù�ȣ' -- ����Ϸù�ȣ
)
COMMENT '������������Ʈ';

-- ������������Ʈ
ALTER TABLE `CPJTS`
	ADD CONSTRAINT `PK_CPJTS` -- ������������Ʈ �⺻Ű
		PRIMARY KEY (
			`CPJNO` -- ���������Ʈ�Ϸù�ȣ
		);

-- ������Ʈ���
CREATE TABLE `UPJTNO` (
	`PJNO` INTEGER      NOT NULL COMMENT '������Ʈ�Ϸù�ȣ', -- ������Ʈ�Ϸù�ȣ
	`UNO`  INTEGER      NOT NULL COMMENT 'ȸ���Ϸù�ȣ', -- ȸ���Ϸù�ȣ
	`PJNM` VARCHAR(100) NOT NULL COMMENT '������Ʈ����', -- ������Ʈ����
	`PJSD` DATE         NOT NULL COMMENT '������Ʈ������', -- ������Ʈ������
	`PJED` DATE         NOT NULL COMMENT '������Ʈ������', -- ������Ʈ������
	`PJDT` VARCHAR(255) NOT NULL COMMENT '������Ʈ�󼼼���', -- ������Ʈ�󼼼���
	`PJPY` VARCHAR(50)  NULL     COMMENT '������Ʈ������' -- ������Ʈ������
)
COMMENT '������Ʈ���';

-- ������Ʈ���
ALTER TABLE `UPJTNO`
	ADD CONSTRAINT `PK_UPJTNO` -- ������Ʈ��� �⺻Ű
		PRIMARY KEY (
			`PJNO` -- ������Ʈ�Ϸù�ȣ
		);

-- ������Ʈ�������ǰԽ���
CREATE TABLE `PJTBDS` (
	`PBNO`  INTEGER      NOT NULL COMMENT '���ǰԽ����Ϸù�ȣ', -- ���ǰԽ����Ϸù�ȣ
	`PBTL`  VARCHAR(100) NOT NULL COMMENT '�Խù�����', -- �Խù�����
	`PBCT`  VARCHAR(255) NOT NULL COMMENT '�Խù�����', -- �Խù�����
	`PBRD`  DATE         NOT NULL COMMENT '�Խù������', -- �Խù������
	`PBRG`  VARCHAR(50)  NOT NULL COMMENT '�Խù������', -- �Խù������
	`PBOP`  CHAR(1)      NOT NULL COMMENT '��������', -- ��������
	`CPJNO` INTEGER      NOT NULL COMMENT '���������Ʈ�Ϸù�ȣ', -- ���������Ʈ�Ϸù�ȣ
	`UNO`   INTEGER      NOT NULL COMMENT 'ȸ���Ϸù�ȣ' -- ȸ���Ϸù�ȣ
)
COMMENT '������Ʈ�������ǰԽ���';

-- ������Ʈ�������ǰԽ���
ALTER TABLE `PJTBDS`
	ADD CONSTRAINT `PK_PJTBDS` -- ������Ʈ�������ǰԽ��� �⺻Ű
		PRIMARY KEY (
			`PBNO` -- ���ǰԽ����Ϸù�ȣ
		);

-- ������Ʈ÷������
CREATE TABLE `CPJTATCHS` (
	`CPJFNO` INTEGER      NOT NULL COMMENT '÷�������Ϸù�ȣ', -- ÷�������Ϸù�ȣ
	`CPJFNM` VARCHAR(255) NOT NULL COMMENT '÷������', -- ÷������
	`CPJNO`  INTEGER      NOT NULL COMMENT '���������Ʈ�Ϸù�ȣ' -- ���������Ʈ�Ϸù�ȣ
)
COMMENT '������Ʈ÷������';

-- ������Ʈ÷������
ALTER TABLE `CPJTATCHS`
	ADD CONSTRAINT `PK_CPJTATCHS` -- ������Ʈ÷������ �⺻Ű
		PRIMARY KEY (
			`CPJFNO` -- ÷�������Ϸù�ȣ
		);

-- ȸ������
CREATE TABLE `UPHOTS` (
	`PHNO` INTEGER      NOT NULL COMMENT '�����Ϸù�ȣ', -- �����Ϸù�ȣ
	`PHOT` VARCHAR(255) NOT NULL COMMENT '����', -- ����
	`UNO`  INTEGER      NOT NULL COMMENT 'ȸ���Ϸù�ȣ' -- ȸ���Ϸù�ȣ
)
COMMENT 'ȸ������';

-- ȸ������
ALTER TABLE `UPHOTS`
	ADD CONSTRAINT `PK_UPHOTS` -- ȸ������ �⺻Ű
		PRIMARY KEY (
			`PHNO` -- �����Ϸù�ȣ
		);

-- ȸ���±�
CREATE TABLE `UTAGS` (
	`UEXNO` INTEGER     NOT NULL COMMENT '�����±��Ϸù�ȣ', -- �����±��Ϸù�ȣ
	`UEXTG` VARCHAR(50) NOT NULL COMMENT '�����±�', -- �����±�
	`UNO`   INTEGER     NOT NULL COMMENT 'ȸ���Ϸù�ȣ' -- ȸ���Ϸù�ȣ
)
COMMENT 'ȸ���±�';

-- ȸ���±�
ALTER TABLE `UTAGS`
	ADD CONSTRAINT `PK_UTAGS` -- ȸ���±� �⺻Ű
		PRIMARY KEY (
			`UEXNO` -- �����±��Ϸù�ȣ
		);

-- ��������÷������
CREATE TABLE `CREATCHS` (
	`REFNO` INTEGER      NOT NULL COMMENT '÷�������Ϸù�ȣ', -- ÷�������Ϸù�ȣ
	`REFNM` VARCHAR(255) NOT NULL COMMENT '÷������', -- ÷������
	`RENO`  INTEGER      NOT NULL COMMENT '�����Ϸù�ȣ' -- �����Ϸù�ȣ
)
COMMENT '��������÷������';

-- ��������÷������
ALTER TABLE `CREATCHS`
	ADD CONSTRAINT `PK_CREATCHS` -- ��������÷������ �⺻Ű
		PRIMARY KEY (
			`REFNO` -- ÷�������Ϸù�ȣ
		);

-- ���������ʿ���
CREATE TABLE `CRESKILLS` (
	`RENO` INTEGER NOT NULL COMMENT '�����Ϸù�ȣ', -- �����Ϸù�ȣ
	`SKNO` INTEGER NOT NULL COMMENT '��������Ϸù�ȣ' -- ��������Ϸù�ȣ
)
COMMENT '���������ʿ���';

-- ���������ʿ���
ALTER TABLE `CRESKILLS`
	ADD CONSTRAINT `PK_CRESKILLS` -- ���������ʿ��� �⺻Ű
		PRIMARY KEY (
			`RENO`, -- �����Ϸù�ȣ
			`SKNO`  -- ��������Ϸù�ȣ
		);

-- ������Ʈ�ʿ���
CREATE TABLE `CPJTSKILLS` (
	`CPJNO` INTEGER NOT NULL COMMENT '���������Ʈ�Ϸù�ȣ', -- ���������Ʈ�Ϸù�ȣ
	`SKNO`  INTEGER NOT NULL COMMENT '��������Ϸù�ȣ' -- ��������Ϸù�ȣ
)
COMMENT '������Ʈ�ʿ���';

-- ������Ʈ�ʿ���
ALTER TABLE `CPJTSKILLS`
	ADD CONSTRAINT `PK_CPJTSKILLS` -- ������Ʈ�ʿ��� �⺻Ű
		PRIMARY KEY (
			`CPJNO`, -- ���������Ʈ�Ϸù�ȣ
			`SKNO`   -- ��������Ϸù�ȣ
		);

-- �����������ǰԽ���
CREATE TABLE `REBDS` (
	`RBNO` INTEGER      NOT NULL COMMENT '���ǰԽ����Ϸù�ȣ', -- ���ǰԽ����Ϸù�ȣ
	`RBTL` VARCHAR(100) NOT NULL COMMENT '�Խù�����', -- �Խù�����
	`RBCT` VARCHAR(255) NOT NULL COMMENT '�Խù�����', -- �Խù�����
	`RBRD` DATE         NOT NULL COMMENT '�Խù������', -- �Խù������
	`RBRG` VARCHAR(50)  NOT NULL COMMENT '�Խù������', -- �Խù������
	`RBOP` CHAR(1)      NOT NULL COMMENT '��������', -- ��������
	`RENO` INTEGER      NOT NULL COMMENT '�����Ϸù�ȣ', -- �����Ϸù�ȣ
	`UNO`  INTEGER      NOT NULL COMMENT 'ȸ���Ϸù�ȣ' -- ȸ���Ϸù�ȣ
)
COMMENT '�����������ǰԽ���';

-- �����������ǰԽ���
ALTER TABLE `REBDS`
	ADD CONSTRAINT `PK_REBDS` -- �����������ǰԽ��� �⺻Ű
		PRIMARY KEY (
			`RBNO` -- ���ǰԽ����Ϸù�ȣ
		);

-- �б�
ALTER TABLE `USCLS`
	ADD CONSTRAINT `FK_USERS_TO_USCLS` -- ȸ�� -> �б�
		FOREIGN KEY (
			`UNO` -- ȸ���Ϸù�ȣ
		)
		REFERENCES `USERS` ( -- ȸ��
			`UNO` -- ȸ���Ϸù�ȣ
		);

-- ���
ALTER TABLE `UEXPS`
	ADD CONSTRAINT `FK_USERS_TO_UEXPS` -- ȸ�� -> ���
		FOREIGN KEY (
			`UNO` -- ȸ���Ϸù�ȣ
		)
		REFERENCES `USERS` ( -- ȸ��
			`UNO` -- ȸ���Ϸù�ȣ
		);

-- �������
ALTER TABLE `CINFOS`
	ADD CONSTRAINT `FK_USERS_TO_CINFOS` -- ȸ�� -> �������
		FOREIGN KEY (
			`UNO` -- ȸ���Ϸù�ȣ
		)
		REFERENCES `USERS` ( -- ȸ��
			`UNO` -- ȸ���Ϸù�ȣ
		);

-- ���ΰ���
ALTER TABLE `CRECS`
	ADD CONSTRAINT `FK_CINFOS_TO_CRECS` -- ������� -> ���ΰ���
		FOREIGN KEY (
			`CNO` -- ����Ϸù�ȣ
		)
		REFERENCES `CINFOS` ( -- �������
			`CNO` -- ����Ϸù�ȣ
		);

-- �������
ALTER TABLE `CPHOTS`
	ADD CONSTRAINT `FK_CINFOS_TO_CPHOTS` -- ������� -> �������
		FOREIGN KEY (
			`CNO` -- ����Ϸù�ȣ
		)
		REFERENCES `CINFOS` ( -- �������
			`CNO` -- ����Ϸù�ȣ
		);

-- ����±�
ALTER TABLE `CTAGS`
	ADD CONSTRAINT `FK_CINFOS_TO_CTAGS` -- ������� -> ����±�
		FOREIGN KEY (
			`CNO` -- ����Ϸù�ȣ
		)
		REFERENCES `CINFOS` ( -- �������
			`CNO` -- ����Ϸù�ȣ
		);

-- �ڰ���
ALTER TABLE `UCERTS`
	ADD CONSTRAINT `FK_USERS_TO_UCERTS` -- ȸ�� -> �ڰ���
		FOREIGN KEY (
			`UNO` -- ȸ���Ϸù�ȣ
		)
		REFERENCES `USERS` ( -- ȸ��
			`UNO` -- ȸ���Ϸù�ȣ
		);

-- �ܱ���
ALTER TABLE `ULANS`
	ADD CONSTRAINT `FK_USERS_TO_ULANS` -- ȸ�� -> �ܱ���
		FOREIGN KEY (
			`UNO` -- ȸ���Ϸù�ȣ
		)
		REFERENCES `USERS` ( -- ȸ��
			`UNO` -- ȸ���Ϸù�ȣ
		);

-- �������
ALTER TABLE `YSKILLS`
	ADD CONSTRAINT `FK_SKILLS_TO_YSKILLS` -- ������� -> �������
		FOREIGN KEY (
			`SKNO` -- ��������Ϸù�ȣ
		)
		REFERENCES `SKILLS` ( -- �������
			`SKNO` -- ��������Ϸù�ȣ
		);

-- �������
ALTER TABLE `YSKILLS`
	ADD CONSTRAINT `FK_USERS_TO_YSKILLS` -- ȸ�� -> �������
		FOREIGN KEY (
			`UNO` -- ȸ���Ϸù�ȣ
		)
		REFERENCES `USERS` ( -- ȸ��
			`UNO` -- ȸ���Ϸù�ȣ
		);

-- ������������Ʈ
ALTER TABLE `CPJTS`
	ADD CONSTRAINT `FK_CINFOS_TO_CPJTS` -- ������� -> ������������Ʈ
		FOREIGN KEY (
			`CNO` -- ����Ϸù�ȣ
		)
		REFERENCES `CINFOS` ( -- �������
			`CNO` -- ����Ϸù�ȣ
		);

-- ������Ʈ���
ALTER TABLE `UPJTNO`
	ADD CONSTRAINT `FK_USERS_TO_UPJTNO` -- ȸ�� -> ������Ʈ���
		FOREIGN KEY (
			`UNO` -- ȸ���Ϸù�ȣ
		)
		REFERENCES `USERS` ( -- ȸ��
			`UNO` -- ȸ���Ϸù�ȣ
		);

-- ������Ʈ�������ǰԽ���
ALTER TABLE `PJTBDS`
	ADD CONSTRAINT `FK_CPJTS_TO_PJTBDS` -- ������������Ʈ -> ������Ʈ�������ǰԽ���
		FOREIGN KEY (
			`CPJNO` -- ���������Ʈ�Ϸù�ȣ
		)
		REFERENCES `CPJTS` ( -- ������������Ʈ
			`CPJNO` -- ���������Ʈ�Ϸù�ȣ
		);

-- ������Ʈ�������ǰԽ���
ALTER TABLE `PJTBDS`
	ADD CONSTRAINT `FK_USERS_TO_PJTBDS` -- ȸ�� -> ������Ʈ�������ǰԽ���
		FOREIGN KEY (
			`UNO` -- ȸ���Ϸù�ȣ
		)
		REFERENCES `USERS` ( -- ȸ��
			`UNO` -- ȸ���Ϸù�ȣ
		);

-- ������Ʈ÷������
ALTER TABLE `CPJTATCHS`
	ADD CONSTRAINT `FK_CPJTS_TO_CPJTATCHS` -- ������������Ʈ -> ������Ʈ÷������
		FOREIGN KEY (
			`CPJNO` -- ���������Ʈ�Ϸù�ȣ
		)
		REFERENCES `CPJTS` ( -- ������������Ʈ
			`CPJNO` -- ���������Ʈ�Ϸù�ȣ
		);

-- ȸ������
ALTER TABLE `UPHOTS`
	ADD CONSTRAINT `FK_USERS_TO_UPHOTS` -- ȸ�� -> ȸ������
		FOREIGN KEY (
			`UNO` -- ȸ���Ϸù�ȣ
		)
		REFERENCES `USERS` ( -- ȸ��
			`UNO` -- ȸ���Ϸù�ȣ
		);

-- ȸ���±�
ALTER TABLE `UTAGS`
	ADD CONSTRAINT `FK_USERS_TO_UTAGS` -- ȸ�� -> ȸ���±�
		FOREIGN KEY (
			`UNO` -- ȸ���Ϸù�ȣ
		)
		REFERENCES `USERS` ( -- ȸ��
			`UNO` -- ȸ���Ϸù�ȣ
		);

-- ��������÷������
ALTER TABLE `CREATCHS`
	ADD CONSTRAINT `FK_CRECS_TO_CREATCHS` -- ���ΰ��� -> ��������÷������
		FOREIGN KEY (
			`RENO` -- �����Ϸù�ȣ
		)
		REFERENCES `CRECS` ( -- ���ΰ���
			`RENO` -- �����Ϸù�ȣ
		);

-- ���������ʿ���
ALTER TABLE `CRESKILLS`
	ADD CONSTRAINT `FK_CRECS_TO_CRESKILLS` -- ���ΰ��� -> ���������ʿ���
		FOREIGN KEY (
			`RENO` -- �����Ϸù�ȣ
		)
		REFERENCES `CRECS` ( -- ���ΰ���
			`RENO` -- �����Ϸù�ȣ
		);

-- ���������ʿ���
ALTER TABLE `CRESKILLS`
	ADD CONSTRAINT `FK_SKILLS_TO_CRESKILLS` -- ������� -> ���������ʿ���
		FOREIGN KEY (
			`SKNO` -- ��������Ϸù�ȣ
		)
		REFERENCES `SKILLS` ( -- �������
			`SKNO` -- ��������Ϸù�ȣ
		);

-- ������Ʈ�ʿ���
ALTER TABLE `CPJTSKILLS`
	ADD CONSTRAINT `FK_CPJTS_TO_CPJTSKILLS` -- ������������Ʈ -> ������Ʈ�ʿ���
		FOREIGN KEY (
			`CPJNO` -- ���������Ʈ�Ϸù�ȣ
		)
		REFERENCES `CPJTS` ( -- ������������Ʈ
			`CPJNO` -- ���������Ʈ�Ϸù�ȣ
		);

-- ������Ʈ�ʿ���
ALTER TABLE `CPJTSKILLS`
	ADD CONSTRAINT `FK_SKILLS_TO_CPJTSKILLS` -- ������� -> ������Ʈ�ʿ���
		FOREIGN KEY (
			`SKNO` -- ��������Ϸù�ȣ
		)
		REFERENCES `SKILLS` ( -- �������
			`SKNO` -- ��������Ϸù�ȣ
		);

-- �����������ǰԽ���
ALTER TABLE `REBDS`
	ADD CONSTRAINT `FK_CRECS_TO_REBDS` -- ���ΰ��� -> �����������ǰԽ���
		FOREIGN KEY (
			`RENO` -- �����Ϸù�ȣ
		)
		REFERENCES `CRECS` ( -- ���ΰ���
			`RENO` -- �����Ϸù�ȣ
		);

-- �����������ǰԽ���
ALTER TABLE `REBDS`
	ADD CONSTRAINT `FK_USERS_TO_REBDS` -- ȸ�� -> �����������ǰԽ���
		FOREIGN KEY (
			`UNO` -- ȸ���Ϸù�ȣ
		)
		REFERENCES `USERS` ( -- ȸ��
			`UNO` -- ȸ���Ϸù�ȣ
		);

		
-- auto_increment ���� ����--
alter table USERS modify UNO int auto_increment;
alter table USCLS modify SCNO int auto_increment;
alter table UEXPS modify EXPNO int auto_increment;
alter table CINFOS modify CNO int auto_increment;
alter table CRECS modify RENO int auto_increment;
alter table CPHOTS modify CPHNO int auto_increment;
alter table CTAGS modify CEXNO int auto_increment;
alter table UCERTS modify CTNO int auto_increment;
alter table ULANS modify LGNO int auto_increment;
alter table SKILLS modify SKNO int auto_increment;
alter table YSKILLS modify YSNO int auto_increment;
alter table CPJTS modify CPJNO int auto_increment;
alter table UPJTNO modify PJNO int auto_increment;
alter table PJTBDS modify PBNO int auto_increment;
alter table CPJTATCHS modify CPJFNO int auto_increment;
alter table UPHOTS modify PHNO int auto_increment;
alter table UTAGS modify UEXNO int auto_increment;
alter table CREATCHS modify REFNO int auto_increment;
alter table CRESKILLS modify RENO int auto_increment;
alter table CPJTSKILLS modify CPJNO int auto_increment;
alter table REBDS modify RBNO int auto_increment;
-- auto_increment ���� ��--

INSERT INTO SKILLS (SKNM) VALUES ('NoSQL');
INSERT INTO SKILLS (SKNM) VALUES ('Oracle');
INSERT INTO SKILLS (SKNM) VALUES ('MySQL');
INSERT INTO SKILLS (SKNM) VALUES ('MSSQL');
INSERT INTO SKILLS (SKNM) VALUES ('Approach');
INSERT INTO SKILLS (SKNM) VALUES ('PostgreSQL');
INSERT INTO SKILLS (SKNM) VALUES ('IBM');
INSERT INTO SKILLS (SKNM) VALUES ('DB2');
INSERT INTO SKILLS (SKNM) VALUES ('dBASE');
INSERT INTO SKILLS (SKNM) VALUES ('IV');
INSERT INTO SKILLS (SKNM) VALUES ('Paradox');
INSERT INTO SKILLS (SKNM) VALUES ('Sybase');
INSERT INTO SKILLS (SKNM) VALUES ('Informix');
INSERT INTO SKILLS (SKNM) VALUES ('VMS');
INSERT INTO SKILLS (SKNM) VALUES ('HDB');
INSERT INTO SKILLS (SKNM) VALUES ('MongoDB');
INSERT INTO SKILLS (SKNM) VALUES ('Couchbase');
INSERT INTO SKILLS (SKNM) VALUES ('ReactJS');
INSERT INTO SKILLS (SKNM) VALUES ('FORTRAN');
INSERT INTO SKILLS (SKNM) VALUES ('COBOL');
INSERT INTO SKILLS (SKNM) VALUES ('R');
INSERT INTO SKILLS (SKNM) VALUES ('Gralde');
INSERT INTO SKILLS (SKNM) VALUES ('Scala');
INSERT INTO SKILLS (SKNM) VALUES ('occam');
INSERT INTO SKILLS (SKNM) VALUES ('Swift');
INSERT INTO SKILLS (SKNM) VALUES ('VisualBasic');
INSERT INTO SKILLS (SKNM) VALUES ('Pascal');
INSERT INTO SKILLS (SKNM) VALUES ('Delphi');
INSERT INTO SKILLS (SKNM) VALUES ('Ruby');
INSERT INTO SKILLS (SKNM) VALUES ('ActionScript');
INSERT INTO SKILLS (SKNM) VALUES ('ASP');
INSERT INTO SKILLS (SKNM) VALUES ('Swift');
INSERT INTO SKILLS (SKNM) VALUES ('Ajax');
INSERT INTO SKILLS (SKNM) VALUES ('CSS');
INSERT INTO SKILLS (SKNM) VALUES ('DHTML');
INSERT INTO SKILLS (SKNM) VALUES ('XHTML');
INSERT INTO SKILLS (SKNM) VALUES ('HTML');
INSERT INTO SKILLS (SKNM) VALUES ('HTML5');
INSERT INTO SKILLS (SKNM) VALUES ('CSS3');
INSERT INTO SKILLS (SKNM) VALUES ('Web');
INSERT INTO SKILLS (SKNM) VALUES ('Python');
INSERT INTO SKILLS (SKNM) VALUES ('Perl');
INSERT INTO SKILLS (SKNM) VALUES ('PHP');
INSERT INTO SKILLS (SKNM) VALUES ('Java');
INSERT INTO SKILLS (SKNM) VALUES ('Sevlet');
INSERT INTO SKILLS (SKNM) VALUES ('JSP');
INSERT INTO SKILLS (SKNM) VALUES ('JavaSE');
INSERT INTO SKILLS (SKNM) VALUES ('JavaEE');
INSERT INTO SKILLS (SKNM) VALUES ('EJB');
INSERT INTO SKILLS (SKNM) VALUES ('Java');
INSERT INTO SKILLS (SKNM) VALUES ('Applet');
INSERT INTO SKILLS (SKNM) VALUES ('Android');
INSERT INTO SKILLS (SKNM) VALUES ('Spring');
INSERT INTO SKILLS (SKNM) VALUES ('iBatis');
INSERT INTO SKILLS (SKNM) VALUES ('MyBatis');
INSERT INTO SKILLS (SKNM) VALUES ('DHTML');
INSERT INTO SKILLS (SKNM) VALUES ('Ajax');
INSERT INTO SKILLS (SKNM) VALUES ('jQuery');
INSERT INTO SKILLS (SKNM) VALUES ('JavaScript');
INSERT INTO SKILLS (SKNM) VALUES ('C');
INSERT INTO SKILLS (SKNM) VALUES ('Xcode');
INSERT INTO SKILLS (SKNM) VALUES ('CocoaPods');
INSERT INTO SKILLS (SKNM) VALUES ('Swift');

insert into USERS VALUES(0,'name','engname','test@a.com','12341234','korea','man','1',20160425,'01012341234','address','webaddress','introduce');
insert into CINFOS VALUES(0,'catego',1234,'compname','size','location',20,'description',1);
insert into USCLS VALUES(0,'schoolname','majorname',2.5,20160425,20160426,1);
insert into UEXPS VALUES(0,'compname','departname',200,20160424,20160425,'description','boss',1);
insert into UCERTS VALUES(0,'ctname','ctag',123123456,90,'weburl',20160424,20160425,20160426,1);
insert into CRECS VALUES(0,'title','compname','description',5,'1',5,'it','developer','home',3000,'user',20160424,20160425,100,'seoul','intern',1);
insert into CPJTS VALUES(0,'title','description','1','5',10,2000,3000,10,20160424,20160425,20160426,'user','home','seoul',1);
insert into UPJTNO VALUES(0,1,'title',20160424,20160425,'description','entry');
insert into ULANS VALUES(0,'langname','level',1);
insert into YSKILLS VALUES(0,1,44,5);
insert into CPHOTS VALUES(0,'photopath',1);
insert into CTAGS VALUES(0,'tagname',1);
insert into PJTBDS VALUES(0,'title','description',20160424,'registrantname','1',1,1);
insert into REBDS VALUES(0,'title','description',20160424,'registrantname','1',1,1);
insert into CREATCHS VALUES(0,'filepath',1);
insert into CRESKILLS VALUES(1,1);
insert into CPJTSKILLS VALUES(1,1);
insert into CPJTATCHS VALUES(0,'filepath',1);
insert into UPHOTS VALUES(0,'photopath',1);
insert into UTAGS VALUES(0,'tagname',1);
