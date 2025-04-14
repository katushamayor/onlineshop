<template>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" ref="modal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Изменение данных</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="recipient-name" class="col-form-label">Имя:</label>
                            <input v-model="name" type="text" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="message-text" class="col-form-label">Почта:</label>
                            <input v-model="email" type="text" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label for="message-text" class="col-form-label">Телефон:</label>
                            <input v-model="phone" type="tel" v-mask="'+7(###)###-##-##'" maxlength="18" class="form-control">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
                    <button type="button" class="btn btn-primary edit" @click.prevent="editUser">Редактировать</button>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import {mask} from 'vue-the-mask'
import {mapState} from "vuex";

export default {
    name: "ModalWindow",
    directives: {mask},
    data() {
        return {
            id: '',
            name: '',
            email: '',
            phone: ''
        }
    },
    computed: {
        ...mapState(['user'])
    },
    watch: {
        '$store.state.user': function (value){
            this.id = value.id
            this.name = value.name
            this.email = value.email
            this.phone = value.number
        }
    },
    methods: {
        async editUser(){
            let btn = document.querySelector('.edit');
            btn.setAttribute('disabled', "");
            let data = {id: this.id};
            if (this.name !== this.$store.state.user.name) data.name = this.name;
            if (this.email !== this.$store.state.user.email) data.email = this.email;
            if (this.phone !== this.$store.state.user.number) data.phone = this.phone;

            this.axios.post('/api/editUser', data)
                .then(res => {
                    btn.removeAttribute('disabled');
                    if (res.data.status){
                        window.location.reload();
                    }
                })
                .catch(err => {
                    btn.removeAttribute('disabled');
                    if (err.response.status === 403){
                        alert(err.response.data.message);
                    }
                    if (!err.response.data.status) {
                        window.location.reload();
                    }
                })
        }
    }
}
</script>

<style scoped>

</style>
