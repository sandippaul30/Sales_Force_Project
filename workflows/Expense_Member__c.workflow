<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Email_send_to_the_new_contributors</fullName>
        <description>Email send to the new contributors</description>
        <protected>true</protected>
        <recipients>
            <field>Member_Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/new_contribution</template>
    </alerts>
    <fieldUpdates>
        <fullName>Copy_email_field</fullName>
        <field>Member_Email__c</field>
        <formula>Member__r.Email__c</formula>
        <name>Copy email field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Email Field</fullName>
        <actions>
            <name>Copy_email_field</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Member__c.Email__c</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>new contribution</fullName>
        <actions>
            <name>Email_send_to_the_new_contributors</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Expense_Member__c.Name</field>
            <operation>notEqual</operation>
            <value>null</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
