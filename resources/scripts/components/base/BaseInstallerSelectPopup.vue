<template>
  <BaseContentPlaceholders v-if="contentLoading">
    <BaseContentPlaceholdersBox
      :rounded="true"
      class="w-full"
      style="min-height: 170px"
    />
  </BaseContentPlaceholders>

  <div v-else class="max-h-[173px]">
    <InstallerModal />
    <!-- <SalesTax :type="type" /> -->

    <div
      v-if="selectedInstaller"
      class="
        flex flex-col
        p-4
        bg-white
        border border-gray-200 border-solid
        min-h-[170px]
        rounded-md
      "
      @click.stop
    >
      <div class="flex relative justify-between mb-2">
        <BaseText
          :text="selectedInstaller.name"
          :length="30"
          class="flex-1 text-base font-medium text-left text-gray-900"
        />
        <div class="flex">
          <a
            class="
              relative
              my-0
              ml-6
              text-sm
              font-medium
              cursor-pointer
              text-primary-500
              items-center
              flex
            "
            @click.stop="editInstaller"
          >
            <BaseIcon name="PencilIcon" class="text-gray-500 h-4 w-4 mr-1" />

            {{ $t('general.edit') }}
          </a>
          <a
            class="
              relative
              my-0
              ml-6
              text-sm
              flex
              items-center
              font-medium
              cursor-pointer
              text-primary-500
            "
            @click="resetSelectedInstaller"
          >
            <BaseIcon name="XCircleIcon" class="text-gray-500 h-4 w-4 mr-1" />
            {{ $t('general.deselect') }}
          </a>
        </div>
      </div>
      <div class="grid grid-cols-2 gap-8 mt-2">
        <div v-if="selectedInstaller.billing" class="flex flex-col">
          <label
            class="
              mb-1
              text-sm
              font-medium
              text-left text-gray-400
              uppercase
              whitespace-nowrap
            "
          >
            {{ $t('general.bill_to') }}
          </label>

          <div
            v-if="selectedInstaller.billing"
            class="flex flex-col flex-1 p-0 text-left"
          >
            <label
              v-if="selectedInstaller.billing.name"
              class="relative w-11/12 text-sm truncate"
            >
              {{ selectedInstaller.billing.name }}
            </label>

            <label class="relative w-11/12 text-sm truncate">
              <span v-if="selectedInstaller.billing.city">
                {{ selectedInstaller.billing.city }}
              </span>
              <span
                v-if="
                  selectedInstaller.billing.city &&
                  selectedInstaller.billing.state
                "
              >
                ,
              </span>
              <span v-if="selectedInstaller.billing.state">
                {{ selectedInstaller.billing.state }}
              </span>
            </label>
            <label
              v-if="selectedInstaller.billing.zip"
              class="relative w-11/12 text-sm truncate"
            >
              {{ selectedInstaller.billing.zip }}
            </label>
          </div>
        </div>

        <div v-if="selectedInstaller.shipping" class="flex flex-col">
          <label
            class="
              mb-1
              text-sm
              font-medium
              text-left text-gray-400
              uppercase
              whitespace-nowrap
            "
          >
            {{ $t('general.ship_to') }}
          </label>

          <div
            v-if="selectedInstaller.shipping"
            class="flex flex-col flex-1 p-0 text-left"
          >
            <label
              v-if="selectedInstaller.shipping.name"
              class="relative w-11/12 text-sm truncate"
            >
              {{ selectedInstaller.shipping.name }}
            </label>

            <label class="relative w-11/12 text-sm truncate">
              <span v-if="selectedInstaller.shipping.city">
                {{ selectedInstaller.shipping.city }}
              </span>
              <span
                v-if="
                  selectedInstaller.shipping.city &&
                  selectedInstaller.shipping.state
                "
              >
                ,
              </span>
              <span v-if="selectedInstaller.shipping.state">
                {{ selectedInstaller.shipping.state }}
              </span>
            </label>
            <label
              v-if="selectedInstaller.shipping.zip"
              class="relative w-11/12 text-sm truncate"
            >
              {{ selectedInstaller.shipping.zip }}
            </label>
          </div>
        </div>
      </div>
    </div>

    <Popover v-else v-slot="{ open }" class="relative flex flex-col rounded-md">
      <PopoverButton
        :class="{
          'text-opacity-90': open,
          'border border-solid border-red-500 focus:ring-red-500 rounded':
            valid.$error,
          'focus:ring-2 focus:ring-primary-400': !valid.$error,
        }"
        class="w-full outline-none rounded-md"
      >
        <div
          class="
            relative
            flex
            justify-center
            px-0
            p-0
            py-16
            bg-white
            border border-gray-200 border-solid
            rounded-md
            min-h-[170px]
          "
        >
          <BaseIcon
            name="UserIcon"
            class="
              flex
              justify-center
              !w-10
              !h-10
              p-2
              mr-5
              text-sm text-white
              bg-gray-200
              rounded-full
              font-base
            "
          />

          <div class="mt-1">
            <label class="text-lg font-medium text-gray-900">
              {{ $t('installers.new_installer') }}
              <span class="text-red-500"> * </span>
            </label>

            <p
              v-if="valid.$error && valid.$errors[0].$message"
              class="text-red-500 text-sm absolute right-3 bottom-3"
            >
              {{ $t('estimates.errors.required') }}
            </p>
          </div>
        </div>
      </PopoverButton>

      <!-- Installer Select Popup -->
      <transition
        enter-active-class="transition duration-200 ease-out"
        enter-from-class="translate-y-1 opacity-0"
        enter-to-class="translate-y-0 opacity-100"
        leave-active-class="transition duration-150 ease-in"
        leave-from-class="translate-y-0 opacity-100"
        leave-to-class="translate-y-1 opacity-0"
      >
        <div v-if="open" class="absolute min-w-full z-10">
          <PopoverPanel
            v-slot="{ close }"
            focus
            static
            class="
              overflow-hidden
              rounded-md
              shadow-lg
              ring-1 ring-black ring-opacity-5
              bg-white
            "
          >
            <div class="relative">
              <BaseInput
                v-model="search"
                container-class="m-4"
                :placeholder="$t('general.search')"
                type="text"
                icon="search"
                @update:modelValue="(val) => debounceSearchInstaller(val)"
              />

              <ul
                class="
                  max-h-80
                  flex flex-col
                  overflow-auto
                  list
                  border-t border-gray-200
                "
              >
                <li
                  v-for="(installer, index) in installerStore.installers"
                  :key="index"
                  href="#"
                  class="
                    flex
                    px-6
                    py-2
                    border-b border-gray-200 border-solid
                    cursor-pointer
                    hover:cursor-pointer hover:bg-gray-100
                    focus:outline-none focus:bg-gray-100
                    last:border-b-0
                  "
                  @click="selectNewInstaller(installer.id, close)"
                >
                  <span
                    class="
                      flex
                      items-center
                      content-center
                      justify-center
                      w-10
                      h-10
                      mr-4
                      text-xl
                      font-semibold
                      leading-9
                      text-white
                      bg-gray-300
                      rounded-full
                      avatar
                    "
                  >
                    {{ initGenerator(installer.name) }}
                  </span>

                  <div class="flex flex-col justify-center text-left">
                    <BaseText
                      v-if="installer.name"
                      :text="installer.name"
                      :length="30"
                      class="
                        m-0
                        text-base
                        font-normal
                        leading-tight
                        cursor-pointer
                      "
                    />
                    <BaseText
                      v-if="installer.contact_name"
                      :text="installer.contact_name"
                      :length="30"
                      class="
                        m-0
                        text-sm
                        font-medium
                        text-gray-400
                        cursor-pointer
                      "
                    />
                  </div>
                </li>
                <div
                  v-if="installerStore.installers.length === 0"
                  class="flex justify-center p-5 text-gray-400"
                >
                  <label class="text-base text-gray-500 cursor-pointer">
                    {{ $t('installers.no_installers_found') }}
                  </label>
                </div>
              </ul>
            </div>

            <button
              v-if="userStore.hasAbilities(abilities.CREATE_INSTALLER)"
              type="button"
              class="
                h-10
                flex
                items-center
                justify-center
                w-full
                px-2
                py-3
                bg-gray-200
                border-none
                outline-none
                focus:bg-gray-300
              "
              @click="openInstallerModal"
            >
              <BaseIcon name="UserAddIcon" class="text-primary-400" />

              <label
                class="
                  m-0
                  ml-3
                  text-sm
                  leading-none
                  cursor-pointer
                  font-base
                  text-primary-400
                "
              >
                {{ $t('installers.add_new_installer') }}
              </label>
            </button>
          </PopoverPanel>
        </div>
      </transition>
    </Popover>
  </div>
</template>

<script setup>
import { Popover, PopoverButton, PopoverPanel } from '@headlessui/vue'
import { useEstimateStore } from '@/scripts/admin/stores/estimate'
import { useInvoiceStore } from '@/scripts/admin/stores/invoice'
import { useRecurringInvoiceStore } from '@/scripts/admin/stores/recurring-invoice'
import { useModalStore } from '@/scripts/stores/modal'
import { useGlobalStore } from '@/scripts/admin/stores/global'
import { useInstallerStore } from '@/scripts/admin/stores/installer'
import { computed, ref } from 'vue'
import { useI18n } from 'vue-i18n'
import { useDebounceFn } from '@vueuse/core'
import { useUserStore } from '@/scripts/admin/stores/user'
import abilities from '@/scripts/admin/stub/abilities'
import { useRoute } from 'vue-router'
import InstallerModal from '@/scripts/admin/components/modal-components/InstallerModal.vue'

const props = defineProps({
  valid: {
    type: Object,
    default: () => {},
  },
  installerId: {
    type: Number,
    default: null,
  },
  type: {
    type: String,
    default: null,
  },
  contentLoading: {
    type: Boolean,
    default: false,
  },
})

const modalStore = useModalStore()
const estimateStore = useEstimateStore()
const installerStore = useInstallerStore()
const globalStore = useGlobalStore()
const invoiceStore = useInvoiceStore()
const recurringInvoiceStore = useRecurringInvoiceStore()
const userStore = useUserStore()
const routes = useRoute()
const { t } = useI18n()
const search = ref(null)
const isSearchingInstaller = ref(false)

const selectedInstaller = computed(() => {
  switch (props.type) {
    case 'estimate':
      return estimateStore.newEstimate.installer
    case 'invoice':
      return invoiceStore.newInvoice.installer
    case 'recurring-invoice':
      return recurringInvoiceStore.newRecurringInvoice.installer
    default:
      return ''
  }
})

function resetSelectedInstaller() {
  if (props.type === 'estimate') {
    estimateStore.resetSelectedInstaller()
  } else if (props.type === 'invoice') {
    invoiceStore.resetSelectedInstaller()
  } else {
    recurringInvoiceStore.resetSelectedInstaller()
  }
}

if (props.installerId && props.type === 'estimate') {
  estimateStore.selectInstaller(props.installerId)
} else if (props.installerId && props.type === 'invoice') {
  invoiceStore.selectInstaller(props.installerId)
} else {
  if (props.installerId) recurringInvoiceStore.selectInstaller(props.installerId)
}

async function editInstaller() {
  await installerStore.fetchInstaller(selectedInstaller.value.id)
  modalStore.openModal({
    title: t('installers.edit_installer'),
    componentName: 'InstallerModal',
  })
}

async function fetchInitialInstallers() {
  await installerStore.fetchInstallers({
    filter: {},
    orderByField: '',
    orderBy: '',
    installer_id: props.installerId,
  })
}

const debounceSearchInstaller = useDebounceFn(() => {
  isSearchingInstaller.value = true

  searchInstaller()
}, 500)

async function searchInstaller() {
  let data = {
    display_name: search.value,
    page: 1,
  }

  await installerStore.fetchInstallers(data)
  isSearchingInstaller.value = false
}

function openInstallerModal() {
  modalStore.openModal({
    title: t('installers.add_installer'),
    componentName: 'InstallerModal',
    variant: 'md',
  })
}

function initGenerator(name) {
  if (name) {
    let nameSplit = name.split(' ')
    let initials = nameSplit[0].charAt(0).toUpperCase()
    return initials
  }
}

function selectNewInstaller(id, close) {
  let params = {
    userId: id,
  }
  if (routes.params.id) params.model_id = routes.params.id

  if (props.type === 'estimate') {
    estimateStore.getNextNumber(params, true)
    estimateStore.selectInstaller(id)
  } else if (props.type === 'invoice') {
    invoiceStore.getNextNumber(params, true)
    invoiceStore.selectInstaller(id)
  } else {
    recurringInvoiceStore.selectInstaller(id)
  }
  close()
  search.value = null
}

globalStore.fetchCurrencies()
globalStore.fetchCountries()
fetchInitialInstallers()
</script>
