<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Store Manager - Stores</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Manage stores for the retail system, including viewing, adding, and toggling store status." />
    <meta name="keywords" content="store manager, stores, retail, management" />
    <meta name="author" content="Admin" />
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="assets/icon/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <style>
        .form-group {
            margin-right: 15px;
        }
        .btn-info {
            background-color: #17a2b8 !important;
            border-color: #17a2b8 !important;
            color: #fff !important;
        }
        .btn-info:hover {
            background-color: #138496 !important;
            border-color: #138496 !important;
        }
        .btn-primary {
            background-color: #007bff !important;
            border-color: #007bff !important;
            color: #fff !important;
        }
        .btn-primary:hover {
            background-color: #0056b3 !important;
            border-color: #0056b3 !important;
        }
        .btn-warning {
            background-color: #ffc107 !important;
            border-color: #ffc107 !important;
            color: #212529 !important;
        }
        .btn-warning:hover {
            background-color: #e0a800 !important;
            border-color: #d39e00 !important;
        }
        .btn-sm {
            padding: 0.25rem 0.5rem;
            font-size: 0.875rem;
            line-height: 1.5;
            border-radius: 0.2rem;
        }
        .pagination {
            margin-top: 20px;
        }
        .pagination .page-link {
            color: #007bff;
        }
        .pagination .page-link:hover {
            background-color: #0056b3;
            color: #fff;
        }
        .pagination .page-item.active .page-link {
            background-color: #007bff;
            border-color: #007bff;
            color: #fff;
        }
        .card {
            overflow: auto;
            max-height: none !important;
        }
        .full-card {
            cursor: pointer;
        }
        .table-card.fullscreen {
            position: fixed !important;
            top: 0 !important;
            left: 0 !important;
            width: 100% !important;
            height: 100% !important;
            z-index: 1050 !important;
            background: #fff !important;
            margin: 0 !important;
            padding: 15px !important;
            overflow: auto !important;
        }
        .table-card.fullscreen .card-block {
            max-height: 90vh !important;
            overflow-y: auto !important;
        }
        .modal-content {
            border-radius: 0.3rem;
        }
        .modal-header {
            background-color: #007bff;
            color: #fff;
        }
        .modal-title {
            font-weight: 500;
        }
        .modal-footer {
            justify-content: flex-end;
        }
    </style>
</head>
<body>
    <div class="theme-loader">
        <div class="loader-track">
            <div class="preloader-wrapper">
                <div class="spinner-layer spinner-blue">
                    <div class="circle-clipper left"><div class="circle"></div></div>
                    <div class="gap-patch"><div class="circle"></div></div>
                    <div class="circle-clipper right"><div class="circle"></div></div>
                </div>
            </div>
        </div>
    </div>
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            <nav class="navbar header-navbar pcoded-header">
                <div class="navbar-wrapper">
                    <div class="navbar-logo">
                        <a href="index.jsp">
                            <img class="img-fluid" src="assets/images/logo.png" alt="Store-Logo" />
                        </a>
                        <a class="mobile-menu waves-effect waves-light" id="mobile-collapse" href="#!">
                            <i class="ti-menu"></i>
                        </a>
                    </div>
                    <div class="navbar-container container-fluid">
                        <ul class="nav-left">
                            <li>
                                <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                            </li>
                            <li class="header-search">
                                <div class="main-search morphsearch-search">
                                    <div class="input-group">
                                        <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                        <input type="text" class="form-control" placeholder="Search Products, Employees...">
                                        <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <ul class="nav-right">
                            <li class="header-notification">
                                <a href="#!" class="waves-effect waves-light">
                                    <i class="ti-bell"></i>
                                    <span class="badge bg-c-red">3</span>
                                </a>
                                <ul class="show-notification">
                                    <li>
                                        <h6>Notifications</h6>
                                        <label class="label label-danger">New</label>
                                    </li>
                                    <li class="waves-effect waves-light">
                                        <div class="media">
                                            <div class="media-body">
                                                <h5 class="notification-user">Low Stock Alert</h5>
                                                Pipeline <p>Product XYZ is below minimum stock level.</p>
                                                <span class="notification-time">2025-05-22 09:00</span>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <a href="notifications.jsp" class="b-b-primary text-primary">View All Notifications</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="user-profile header-notification">
                                <a href="#!" class="waves-effect waves-light">
                                    <img src="assets/images/avatar-4.jpg" class="img-radius" alt="User-Profile-Image">
                                    <span><c:out value="${sessionScope.user.fullName}"/></span>
                                    <i class="ti-angle-down"></i>
                                </a>
                                <ul class="show-notification profile-notification">
                                    <li><a href="user-profile.jsp"><i class="ti-user"></i> Profile</a></li>
                                    <li><a href="settings.jsp"><i class="ti-settings"></i> Settings</a></li>
                                    <li><a href="logout.html"><i class="ti-layout-sidebar-left"></i> Logout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    <nav class="pcoded-navbar">
                        <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                        <div class="pcoded-inner-navbar main-menu">
                            <div class="main-menu-header">
                                <img class="img-80 img-radius" src="assets/images/avatar-4.jpg" alt="User-Profile-Image">
                                <div class="user-details">
                                    <span id="more-details"><c:out value="${sessionScope.user.fullName}"/> <i class="fa fa-caret-down"></i></span>
                                </div>
                            </div>
                            <div class="main-menu-content">
                                <ul>
                                    <li class="more-details">
                                        <a href="user-profile.jsp"><i class="ti-user"></i>View Profile</a>
                                        <a href="settings.jsp"><i class="ti-settings"></i>Settings</a>
                                        <a href="logout.html"><i class="ti-layout-sidebar-left"></i>Logout</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="p-15 p-b-0">
                                <!-- Removed redundant sidebar search -->
                            </div>
                            <div class="pcoded-navigation-label">Store Management</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li>
                                    <a href="index.jsp" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-home"></i></span>
                                        <span class="pcoded-mtext">Dashboard</span>
                                    </a>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-package"></i></span>
                                        <span class="pcoded-mtext">Products</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li><a href="products.jsp">View Products</a></li>
                                        <li><a href="add-product.jsp">Add Product</a></li>
                                        <li><a href="categories.jsp">Manage Categories</a></li>
                                        <li><a href="sizes.jsp">Manage Sizes</a></li>
                                        <li><a href="colors.jsp">Manage Colors</a></li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-archive"></i></span>
                                        <span class="pcoded-mtext">Inventory</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li><a href="inventory.jsp">View Inventory</a></li>
                                        <li><a href="warehouses.jsp">Manage Warehouses</a></li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-receipt"></i></span>
                                        <span class="pcoded-mtext">Invoices</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li><a href="invoices.jsp">View Invoices</a></li>
                                        <li><a href="create-invoice.jsp">Create Invoice</a></li>
                                        <li><a href="bank-transactions.jsp">Bank Transactions</a></li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-truck"></i></span>
                                        <span class="pcoded-mtext">Purchases</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li><a href="purchases.jsp">View Purchases</a></li>
                                        <li><a href="create-purchase.jsp">Create Purchase</a></li>
                                    </ul>
                                </li>
                                <li class="pcoded-hasmenu">
                                    <a href="javascript:void(0)" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-user"></i></span>
                                        <span class="pcoded-mtext">Employees</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    <ul class="pcoded-submenu">
                                        <li><a href="employees.jsp">View Employees</a></li>
                                        <li><a href="add-employee.jsp">Add Employee</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="CustomerListServlet" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-id-badge"></i></span>
                                        <span class="pcoded-mtext">Customers</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="cashflows.jsp" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-money"></i></span>
                                        <span class="pcoded-mtext">Cash Flow</span>
                                    </a>
                                </li>
                                <li class="active">
                                    <a href="stores.jsp" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-shopping-cart"></i></span>
                                        <span class="pcoded-mtext">Stores</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="notifications" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-bell"></i></span>
                                        <span class="pcoded-mtext">Notifications</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="reports.jsp" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-bar-chart"></i></span>
                                        <span class="pcoded-mtext">Reports</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                    <div class="pcoded-content">
                        <div class="page-header">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-md-8">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">Store Manager</h5>
                                            <p class="m-b-0">Manage store information and view their details.</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb-title">
                                            <li class="breadcrumb-item">
                                                <a href="index.jsp"><i class="fa fa-home"></i></a>
                                            </li>
                                            <li class="breadcrumb-item"><a href="#!">Stores</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <div class="page-body">
                                        <div class="row">
                                            <div class="col-xl-12 col-md-12">
                                                <div class="card table-card">
                                                    <div class="card-header">
                                                        <h5>Store List</h5>
                                                        <div class="card-header-right">
                                                            <ul class="list-unstyled card-option">
                                                                <li class="full-card"><i class="fa fa-window-maximize"></i></li>
                                                                <li><i class="fa fa-minus minimize-card"></i></li>
                                                                <li><i class="fa fa-refresh reload-card"></i></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <div class="card-block">
                                                        <c:if test="${not empty message}">
                                                            <div class="alert alert-${messageType} alert-dismissible fade show" role="alert">
                                                                <c:out value="${message}"/>
                                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                                                    <span aria-hidden="true">×</span>
                                                                </button>
                                                            </div>
                                                        </c:if>
                                                        <div class="m-b-20">
                                                            <form class="form-inline" action="stores" method="GET">
                                                                <div class="form-group">
                                                                    <input type="text" class="form-control" name="search" placeholder="Search by Name or Address..." value="${search}">
                                                                </div>
                                                                <div class="form-group">
                                                                    <select class="form-control" name="status">
                                                                        <option value="">All Statuses</option>
                                                                        <option value="active" ${status == 'active' ? 'selected' : ''}>Active</option>
                                                                        <option value="inactive" ${status == 'inactive' ? 'selected' : ''}>Inactive</option>
                                                                    </select>
                                                                </div>
                                                                <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                                    <i class="fa fa-filter"></i> Search
                                                                </button>
                                                                <a href="stores?reset=true" class="btn btn-primary waves-effect waves-light ml-2">
                                                                    <i class="fa fa-list"></i> All
                                                                </a>
                                                            </form>
                                                        </div>
                                                        <div class="dt-responsive table-responsive">
                                                            <div class="m-b-20">
                                                                <button class="btn btn-primary waves-effect waves-light" data-toggle="modal" data-target="#storeModal" onclick="clearForm()">
                                                                    <i class="fa fa-plus"></i> Add New Store
                                                                </button>
                                                            </div>
                                                            <c:choose>
                                                                <c:when test="${empty stores}">
                                                                    <p>No stores found.</p>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <table class="table table-hover">
                                                                        <thead>
                                                                            <tr>
                                                                                <th>Store ID</th>
                                                                                <th>Name</th>
                                                                                <th>Address</th>
                                                                                <th>Phone</th>
                                                                                <th>Status</th>
                                                                                <th>Actions</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <c:forEach var="store" items="${stores}">
                                                                                <tr>
                                                                                    <td><code><c:out value="${store.storeID}"/></code></td>
                                                                                    <td><c:out value="${store.storeName}"/></td>
                                                                                    <td><c:out value="${store.address}"/></td>
                                                                                    <td><c:out value="${store.phoneNumber}"/></td>
                                                                                    <td><c:out value="${store.active ? 'Active' : 'Inactive'}"/></td>
                                                                                    <td>
                                                                                        <button class="btn btn-sm btn-info waves-effect waves-light" data-toggle="modal" data-target="#storeModal" onclick="populateForm(${store.storeID}, '${store.storeName}', '${store.address}', '${store.phoneNumber}', ${store.active})" title="Edit">
                                                                                            <i class="fa fa-edit"></i>
                                                                                        </button>
                                                                                        <a href="stores?action=toggle&storeID=${store.storeID}" class="btn btn-sm btn-warning waves-effect waves-light" title="${store.active ? 'Deactivate' : 'Activate'}" onclick="return confirm('Are you sure you want to ${store.active ? 'deactivate' : 'activate'} this store?');">
                                                                                            <i class="fa ${store.active ? 'fa-unlock' : 'fa-lock'}"></i>
                                                                                        </a>
                                                                                    </td>
                                                                                </tr>
                                                                            </c:forEach>
                                                                        </tbody>
                                                                    </table>
                                                                    <c:if test="${totalPages > 1}">
                                                                        <nav aria-label="Page navigation">
                                                                            <ul class="pagination justify-content-center">
                                                                                <c:if test="${currentPage > 1}">
                                                                                    <li class="page-item">
                                                                                        <a class="page-link" href="stores?page=${currentPage - 1}&search=${search}&status=${status}">Previous</a>
                                                                                    </li>
                                                                                </c:if>
                                                                                <c:forEach begin="1" end="${totalPages}" var="i">
                                                                                    <li class="page-item ${currentPage == i ? 'active' : ''}">
                                                                                        <a class="page-link" href="stores?page=${i}&search=${search}&status=${status}">${i}</a>
                                                                                    </li>
                                                                                </c:forEach>
                                                                                <c:if test="${currentPage < totalPages}">
                                                                                    <li class="page-item">
                                                                                        <a class="page-link" href="stores?page=${currentPage + 1}&search=${search}&status=${status}">Next</a>
                                                                                    </li>
                                                                                </c:if>
                                                                            </ul>
                                                                        </nav>
                                                                    </c:if>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Add/Edit Store Modal -->
        <div class="modal fade" id="storeModal" tabindex="-1" role="dialog" aria-labelledby="storeModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="storeModalLabel">Add Store</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="stores" method="post" id="storeForm">
                            <input type="hidden" name="action" value="save">
                            <input type="hidden" id="storeId" name="storeID">
                            <div class="form-group row">
                                <label for="storeName" class="col-sm-3 col-form-label">Name</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="storeName" name="storeName" placeholder="e.g., South Branch" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="storeAddress" class="col-sm-3 col-form-label">Address</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="storeAddress" name="address" placeholder="e.g., 101 South Lane, City D" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="storePhone" class="col-sm-3 col-form-label">Phone</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="storePhone" name="phoneNumber" placeholder="e.g., (456) 789-0123" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="storeStatus" class="col-sm-3 col-form-label">Status</label>
                                <div class="col-sm-9">
                                    <select class="form-control" id="storeStatus" name="isActive" required>
                                        <option value="true">Active</option>
                                        <option value="false">Inactive</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary" form="storeForm">Save Store</button>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript" src="assets/js/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="assets/js/jquery-ui/jquery-ui.min.js"></script>
        <script type="text/javascript" src="assets/js/popper.js/popper.min.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/pages/waves/js/waves.min.js"></script>
        <script type="text/javascript" src="assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
        <script type="text/javascript" src="assets/js/modernizr/modernizr.js"></script>
        <script type="text/javascript" src="assets/js/SmoothScroll.js"></script>
        <script src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="assets/js/pcoded.min.js"></script>
        <script src="assets/js/vertical-layout.min.js"></script>
        <script type="text/javascript" src="assets/js/script.js"></script>
        <script>
            function populateForm(id, name, address, phone, isActive) {
                document.getElementById('storeId').value = id;
                document.getElementById('storeName').value = name;
                document.getElementById('storeAddress').value = address;
                document.getElementById('storePhone').value = phone;
                document.getElementById('storeStatus').value = isActive ? 'true' : 'false';
                document.getElementById('storeModalLabel').textContent = 'Edit Store';
            }
            function clearForm() {
                document.getElementById('storeId').value = '';
                document.getElementById('storeName').value = '';
                document.getElementById('storeAddress').value = '';
                document.getElementById('storePhone').value = '';
                document.getElementById('storeStatus').value = 'true';
                document.getElementById('storeModalLabel').textContent = 'Add Store';
            }
            document.querySelectorAll('.full-card').forEach(function(element) {
                element.addEventListener('click', function() {
                    var card = this.closest('.table-card');
                    if (card.classList.contains('fullscreen')) {
                        card.classList.remove('fullscreen');
                    } else {
                        card.classList.add('fullscreen');
                    }
                });
            });
        </script>
    </body>
</html>