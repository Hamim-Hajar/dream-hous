<form action="EditProjectServlet" method="post">
    <input type="hidden" name="projectId" value="${project.pId}">
    <div class="form-group">
        <label for="name">Project Name:</label>
        <input type="text" class="form-control form-control-lg" id="name" name="name" value="${project.pName}" required>
    </div>
    <div class="form-group">
        <label for="description">Description:</label>
        <textarea class="form-control form-control-lg" id="description" name="description" required>${project.pDescription}</textarea>
    </div>
    <div class="form-group">
        <label for="startDate">Start Date:</label>
        <input type="date" class="form-control form-control-lg" id="startDate" name="startDate" value="${project.pStartdate}" required>
    </div>
    <div class="form-group">
        <label for="endDate">End Date:</label>
        <input type="date" class="form-control form-control-lg" id="endDate" name="endDate" value="${project.pEndDate}" required>
    </div>
    <div class="form-group">
        <label for="budget">Budget:</label>
        <input type="number" class="form-control form-control-lg" id="budget" name="budget" value="${project.budget}" required>
    </div>
    <button type="submit" class="btn btn-primary btn-lg">Update Project</button>
</form>
