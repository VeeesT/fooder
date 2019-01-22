<#import "parts/common.ftl" as c>

<@c.page>
    <div class="panel panel-default">
        <div class="panel-heading"></div>
        <table class="table">
            <thead>
            <tr>
                <th>Name</th>
                <th>Role</th>
                <th>#</th>
                <th>#</th>
                <th>#</th>
            </tr>
            </thead>
            <tbody>
            <#list users as user>
                <tr>
                    <td>${user.username}</td>
                    <td><#list user.roles as role>${role}<#sep>, </#list></td>
                    <td><a href="/user/${user.id}">edit</a></td>
                    <td><a href="/user/delete/${user.id}">delete</a></td>
                    <td><a href="/user/block/${user.id}">block</a></td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
</@c.page>