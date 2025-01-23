<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <title>{{ get_page_title(!Request::header('company')) }}</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="apple-touch-icon" sizes="180x180" href="/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicons/favicon-16x16.png">
    <link rel="manifest" href="/favicons/site.webmanifest">
    <link rel="mask-icon" href="/favicons/safari-pinned-tab.svg" color="#5851d8">
    <link rel="shortcut icon" href="/favicons/favicon.ico">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-config" content="/favicons/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css">

</head>

<body>
    <div class="container">
        <br><br>
        <h2>Create Tenant</h2>
        <br><br>
        @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        @endif

        <form action="{{ route('tenants.store') }}" method="POST">
            @csrf
            <div class="form-group">
                <label for="id">Company Name (this name will be the tenant subdomain)</label>
                <input type="text" class="form-control" id="id" name="id" required>
            </div>
            <div class="form-group">
                <label for="plan">Plan</label>
                <select class="form-control" id="plan" name="plan" required>
                    <option value="free">Free</option>
                    <option value="plan-1">Plan 1</option>
                    <option value="plan-1">Plan 2</option>
                    <option value="plan-1">Plan 3</option>

                </select>
            </div>
            <button type="submit" class="btn btn-primary">Create Tenant</button>
        </form>
    </div>
</body>

</html>