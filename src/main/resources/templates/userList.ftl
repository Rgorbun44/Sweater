<#import "parts/common.ftl" as c>
<@c.page>

List of users:
    <#list users as user>
        <br><b>${user.username}</b>
       <b><#list user.roles as role>${role}<#sep>, </#list></b>
        <a href="/user/${user.id}">edit</a>
    </#list>
</@c.page>