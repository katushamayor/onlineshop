<template>
    <div class="d-flex align-items-center justify-content-center vh-100">
        <div class="text-center row">
            <div class=" col-md-6">
                <img src="https://cdn.pixabay.com/photo/2017/03/09/12/31/error-2129569__340.jpg" alt=""
                     class="img-fluid">
            </div>
            <div class=" col-md-6 mt-5">
                <p class="fs-3"> <span class="text-danger">Упс!</span> Страница не найдена.</p>
                <p class="lead">
                    Страница которую вы просматриваете не существует!.
                </p>
                <router-link to="/" class="btn btn-primary">На главную</router-link>
            </div>

        </div>
    </div>
</template>

<script>
export default {
    name: "Error"
}
</script>

<style scoped>

</style>
