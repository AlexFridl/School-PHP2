
<div class="container">

    <hr>

    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p>Copyright &copy; Aleksandra Fridl 2021 | Top News</p>
            </div>
        </div>
    </footer>

</div>
<!-- /.container -->
@section('JavaScript')
<!-- jQuery -->
<script src="{{asset('/')}}js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="{{asset('/')}}js/bootstrap.min.js"></script>

<script language="JavaScript" src="{{asset('/')}}js/script.js"></script>
<script type="text/javascript">
    const baseUrl = '{{ route("index") }}';
    const token = '{{ csrf_token() }}';
</script>

@show
</body>

</html>
