<#import "parts/common.ftl" as c>
<@c.page>
User editor
    <form action="/user" method="post">
        <input type="text" name="username" value="${user.username}">
        <#list roles as rolе>
                <div>
                  <label> <input type="checkbox" name="${rolе}" ${user.roles?seq_contains(role)?string("checked", "")}>${rolе}</label>
                </div>

        </#list>
        <input type="text" value="${user.id}" name = "userId">
        <input type="hidden" value="${_csrf.token}" name="_csrf">
        <button type="submit">Save</button>
    </form>

</@c.page>